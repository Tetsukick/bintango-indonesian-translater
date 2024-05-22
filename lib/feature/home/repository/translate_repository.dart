import 'dart:convert';
import 'dart:developer' as dev;
import 'dart:math';

import 'package:bintango_indonesian_translater/feature/home/model/tango_entity.dart';
import 'package:bintango_indonesian_translater/feature/home/model/translate_response.dart';
import 'package:collection/collection.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bintango_indonesian_translater/shared/http/api_provider.dart';
import 'package:bintango_indonesian_translater/shared/http/api_response.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class TranslateRepositoryProtocol {
  Future<TranslateResponse> translate({
    required String text, required bool isSourceJapanese,});
}

final translateRepositoryProvider =
  Provider<TranslateRepository>(TranslateRepository.new);

class TranslateRepository implements TranslateRepositoryProtocol {
  TranslateRepository(this._ref);

  late final ApiProvider _api = _ref.read(apiProvider);
  final Ref _ref;

  @override
  Future<TranslateResponse> translate({
    required String text,
    required bool isSourceJapanese,
  }) async {
    final prompt = isSourceJapanese ?
    '日本語の例文「$text」をインドネシア語に翻訳してください。（表現方法：教科書のような違和感のない優しい丁寧なインドネシア語表現)'
      : 'インドネシア語の例文「$text」を日本語に翻訳してください。（文体：ですます調、表現方法：教科書のような違和感のない優しい丁寧な日本語表現';

    final queryParams = {
      'key': dotenv.env['GEMINI_API_KEY']
    };
    final body =
    {
      'contents': [
        {'role': 'user', 'parts': { 'text': prompt }}
      ]
    };

    final response = await _api.post('/gemini-pro:generateContent', json.encode(body) , query: queryParams,);

    response.when(
        success: (success) {
          dev.log(success.toString());
        },
        error: (error) {
          return APIResponse.error(error);
        },);

    if (response is APISuccess) {
      final value = response.value as Map<String, dynamic>;
      try {
        final _result = TranslateResponse(
          code: 200,
          text: value['candidates'][0]['content']['parts'][0]['text'] as String
        );

        return _result;
      } catch (e) {
        throw Exception(e);
      }
    } else if (response is APIError) {
      throw Exception(response.exception);
    } else {
      throw Exception('timeout');
    }
  }

  Future<TranslateResponse> getDetailExplanation({
    required String text,
    required bool isSourceJapanese,
  }) async {
    final prompt =
    'インドネシア語の例文「$text」の意味と文法を日本語で解説してください。（文体：ですます調、表現方法：教科書のような違和感のない優しい丁寧な日本語表現, テキスト形式: マークダウン形式)';

    final queryParams = {
      'key': dotenv.env['GEMINI_API_KEY']
    };
    final body =
    {
      'contents': [
        {'role': 'user', 'parts': { 'text': prompt }}
      ]
    };

    final response = await _api.post('/gemini-pro:generateContent', json.encode(body) , query: queryParams,);

    response.when(
      success: (success) {
        dev.log(success.toString());
      },
      error: (error) {
        return APIResponse.error(error);
      },);

    if (response is APISuccess) {
      final value = response.value as Map<String, dynamic>;
      try {
        final _result = TranslateResponse(
            code: 200,
            text: value['candidates'][0]['content']['parts'][0]['text'] as String
        );

        return _result;
      } catch (e) {
        throw Exception(e);
      }
    } else if (response is APIError) {
      throw Exception(response.exception);
    } else {
      throw Exception('timeout');
    }
  }

  Future<List<TangoEntity>> searchIncludeWords(String value) async {
    final includedWords = <TangoEntity>[];
    final regExpForSpaceAndNewlines = RegExp(r'[\s\n]');
    final wordList = value.split(regExpForSpaceAndNewlines);
    final regExpOfNyaMuKu = RegExp(r'(nya|ku|mu)$');
    const baseSearchLength = 3;
    for (var i = 0; i < wordList.length; i++) {
      final remainCount = [baseSearchLength, wordList.length - i].reduce(min);
      var searchText = '';
      for (var j = 0; j < remainCount; j++) {
        if (j>0) {
          searchText = '$searchText ';
        }
        searchText = searchText + wordList[i + j];
        if (j == 0) {
          if (searchText.contains(regExpOfNyaMuKu)) {
            final replacedSearchText =
              searchText.replaceAll(regExpOfNyaMuKu, '');
            if (includedWords
                .firstWhereOrNull((e) => e.indonesian == replacedSearchText) != null) {
              continue;
            }
            includedWords.addAll(
                await search(replacedSearchText),);
          }
        }
        if (includedWords
            .firstWhereOrNull((e) => e.indonesian == searchText) != null) {
          continue;
        }
        includedWords.addAll(await search(searchText));
      }
    }
    return includedWords;
  }

  Future<List<TangoEntity>> search(String search) async {
    final searchText = search.toLowerCase()
        .replaceAll('.', '')
        .replaceAll(',', '')
        .replaceAll('\n', '');
    final searchWordJsonList = await Supabase.instance.client
        .from('words')
        .select()
        .eq('indonesian', searchText);
    final searchWordList =
      searchWordJsonList.map(TangoEntity.fromJson).toList();
    return searchWordList;
  }
}
