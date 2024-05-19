import 'dart:developer' as dev;
import 'dart:math';

import 'package:bintango_indonesian_translater/feature/home/model/tango_entity.dart';
import 'package:bintango_indonesian_translater/feature/home/model/translate_response.dart';
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
    final body = {
      'text': text,
      'source': isSourceJapanese ? 'ja' : 'id',
      'target': isSourceJapanese ? 'id' : 'ja',
    };
    final response = await _api.post('/exec', body);

    response.when(
        success: (success) {
          dev.log(success.toString());
        },
        error: (error) {
          return APIResponse.error(error);
        },);

    if (response is APISuccess) {
      final value = response.value;
      try {
        final _result = TranslateResponse
            .fromJson(value as Map<String, dynamic>);

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
    final wordList = value.split(' ');
    const baseSearchLength = 3;
    for (var i = 0; i < wordList.length; i++) {
      final remainCount = [baseSearchLength, wordList.length - i].reduce(min);
      var searchText = '';
      for (var j = 0; j < remainCount; j++) {
        if (j>0) {
          searchText = '$searchText ';
        }
        searchText = searchText + wordList[i + j];
        includedWords.addAll(await search(searchText));
      }
    }
    return includedWords;
  }

  Future<List<TangoEntity>> search(String search) async {
    final searchText = search.toLowerCase().replaceAll('.', '').replaceAll(',', '');
    final searchWordJsonList = await Supabase.instance.client
        .from('words')
        .select()
        .eq('indonesian', searchText);
    final searchWordList =
      searchWordJsonList.map(TangoEntity.fromJson).toList();
    return searchWordList;
  }
}
