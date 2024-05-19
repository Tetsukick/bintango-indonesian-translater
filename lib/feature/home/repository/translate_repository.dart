import 'dart:developer';

import 'package:bintango_indonesian_translater/feature/home/model/translate_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bintango_indonesian_translater/shared/http/api_provider.dart';
import 'package:bintango_indonesian_translater/shared/http/api_response.dart';

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
          log(success.toString());
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
}
