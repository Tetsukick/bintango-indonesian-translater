import 'package:bintango_indonesian_translater/feature/home/repository/translate_repository.dart';
import 'package:bintango_indonesian_translater/feature/home/state/translate_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'translate_provider.g.dart';

//Generated by @riverpod
// final homeNotifierProvider =
//     NotifierProvider<HomeNotifier, HomeState>(HomeNotifier.new);

@riverpod
class TranslateNotifier extends _$TranslateNotifier {
  @override
  TranslateState build() {
    return TranslateState();
  }

  late final _translateProvider = ref.read(translateRepositoryProvider);

  void changeLangSource() {
    state.isLanguageSourceJapanese = !state.isLanguageSourceJapanese;
    state = state.copyWith();
  }

  Future<void> updateInputText(String text) async {
    state.inputtedText = text;
    state = state.copyWith();

    await Future.delayed(Duration(seconds: 2));
    if (state.inputtedText == text && state.inputtedText.length >= 3) {
      await translate();
    }
  }

  Future<void> translate() async {
    state.isLoading = true;
    state = state.copyWith();
    final response = await _translateProvider.translate(
        text: state.inputtedText,
        isSourceJapanese: state.isLanguageSourceJapanese);
    state
      ..translateResponse = response
      ..isLoading = false;
    state = state.copyWith();
  }
}
