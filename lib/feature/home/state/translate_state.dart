import 'package:bintango_indonesian_translater/feature/home/model/tango_entity.dart';
import 'package:bintango_indonesian_translater/feature/home/model/translate_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'translate_state.freezed.dart';

@unfreezed
class TranslateState with _$TranslateState {
  factory TranslateState({
    @Default(false) bool isLoading,
    @Default(false) bool isLanguageSourceJapanese,
    @Default('') String inputtedText,
    TranslateResponse? translateResponse,
    @Default([]) List<TangoEntity> includedWords,
  }) = _TranslateState;
}
