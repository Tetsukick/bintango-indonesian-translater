import 'package:bintango_indonesian_translater/feature/home/provider/translate_provider.dart';
import 'package:bintango_indonesian_translater/feature/home/widget/word_detail_card.dart';
import 'package:bintango_indonesian_translater/gen/assets.gen.dart';
import 'package:bintango_indonesian_translater/shared/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});

  final TextEditingController _inputController = TextEditingController();
  final TextEditingController _outputController = TextEditingController();
  final _iconHeight = 20.0;
  final _iconWidth = 20.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: ColorConstants.bgPinkColor,
        title: Row(
          children: [
            const SizedBox(width: 8,),
            Assets.image.bintangoLogo256.image(height: 88),
            const SizedBox(width: 16,),
            Assets.image.bintangoTranslateLogo.image(height: 88),
          ],
        ),
      ),
      backgroundColor: ColorConstants.bgPinkColor,
      body: _widgetContent(context, ref),
    );
  }

  Widget _widgetContent(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _translateArea(context, ref),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              height: 2,
              width: double.infinity,
              color: ColorConstants.primaryRed900.withOpacity(0.2),
            ),
          ),
          _includedWordArea(context, ref),
        ],
      ),
    );
  }

  Widget _translateArea(BuildContext context, WidgetRef ref) {
    final state = ref.watch(translateNotifierProvider);
    return SizedBox(
      height: 300,
      child: Stack(
        children: [
          Row(
            children: [
              const Spacer(),
              _inputOutputField(
                context,
                ref,
                isJapanese: state.isLanguageSourceJapanese,
                isInput: true,),
              const SizedBox(width: 24,),
              _inputOutputField(
                context,
                ref,
                isJapanese: !state.isLanguageSourceJapanese,
                isInput: false,),
              const Spacer(),
            ],
          ),
          Align(
            child: _changeLangSourceButton(context, ref),
          ),
        ],
      ),
    );
  }

  Widget _changeLangSourceButton(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(translateNotifierProvider.notifier);
    return ElevatedButton(
      onPressed: notifier.changeLangSource,
      style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Assets.image.reverse128.image(width: 32, height: 32),
      ),
    );
  }

  Widget _inputOutputField(
      BuildContext context,
      WidgetRef ref,
      {
        required bool isJapanese,
        required bool isInput,
      }) {
    final notifier = ref.watch(translateNotifierProvider.notifier);
    final state = ref.watch(translateNotifierProvider);
    if (state.isLoading) {
      _outputController.value = _outputController.value.copyWith(
        text: 'loading...',
        selection: const TextSelection
            .collapsed(offset: 'loading...'.length),
      );
    }
    if (state.translateResponse != null) {
      _outputController.value = _outputController.value.copyWith(
        text: state.translateResponse!.text,
        selection: TextSelection
            .collapsed(offset: state.translateResponse!.text.length),
      );
    }
    return Card(
      color: Colors.white,
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 3,
        height: 300,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: _languageTitle(isJapanese: isJapanese),
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: ColorConstants.strokeGrey,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                enabled: isInput,
                maxLines: 6,
                maxLength: isInput ? 500 : null,
                controller: isInput ? _inputController : _outputController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  hintText: isInput ? 'ここに翻訳したい文章を入力してください。' : null,
                  alignLabelWithHint: true,
                  suffixIcon: isInput ? IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: _inputController.clear,
                  ) : IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.copy),
                  ),
                ),
                onChanged: notifier.updateInputText,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _languageTitle({required bool isJapanese}) {
    return Row(
      children: [
        if (isJapanese) Assets.image.japan64.image(height: 28)
          else Assets.image.indonesia64.image(height: 28),
        const SizedBox(width: 8,),
        Text(
          isJapanese ? '日本語' : 'インドネシア語',
          style: const TextStyle(
            color: ColorConstants.fontGrey,
            fontSize: 24,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _includedWordArea(BuildContext context, WidgetRef ref) {
    final state = ref.watch(translateNotifierProvider);
    return MasonryGridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(16),
      itemCount: state.includedWords.length,
      itemBuilder: (context, index) {
        return WordDetailCard(entity: state.includedWords[index]);
      },
    );
  }
}
