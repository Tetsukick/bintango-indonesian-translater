import 'package:bintango_indonesian_translater/feature/home/state/translate_state.dart';
import 'package:bintango_indonesian_translater/shared/http/api_provider.dart';
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

  late final ApiProvider _api = ref.read(apiProvider);
}
