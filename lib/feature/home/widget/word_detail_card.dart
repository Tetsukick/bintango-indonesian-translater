import 'package:bintango_indonesian_translater/feature/home/model/part_of_speech.dart';
import 'package:bintango_indonesian_translater/feature/home/model/tango_entity.dart';
import 'package:bintango_indonesian_translater/gen/assets.gen.dart';
import 'package:bintango_indonesian_translater/shared/constants/color_constants.dart';
import 'package:bintango_indonesian_translater/shared/widget/text_wdiget.dart';
import 'package:flutter/material.dart';

class WordDetailCard extends StatelessWidget {
  WordDetailCard({required this.entity, Key? key}) : super(key: key);

  final _iconHeight = 20.0;
  final _iconWidth = 20.0;

  final TangoEntity entity;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 150,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _partOfSpeech(entity),
              const SizedBox(height: 8),
              _indonesian(entity),
              const SizedBox(height: 4),
              _separater(),
              _japanese(entity),
              const SizedBox(height: 8),
              _english(entity),
              const SizedBox(height: 8),
              _exampleHeader(),
              const SizedBox(height: 8),
              _example(entity),
              const SizedBox(height: 8),
              _exampleJp(entity),
              const SizedBox(height: 8),
              _descriptionHeader(entity),
              const SizedBox(height: 8),
              _description(entity),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }

  Widget _partOfSpeech(TangoEntity entity) {
    return Row(
      children: [
        TextWidget.titleWhiteSmallBoldWithBackGround(PartOfSpeechExt.intToPartOfSpeech(value: entity.partOfSpeech).title),
        const SizedBox(width: 12),
      ],
    );
  }

  Widget _indonesian(TangoEntity entity) {
    return Row(
      children: [
        Assets.image.indonesia64.image(height: _iconHeight, width: _iconWidth),
        const SizedBox(width: 12),
        Flexible(child:
        TextWidget.titleBlackLargestBold(entity.indonesian, maxLines: 2),),
      ],
    );
  }

  Widget _japanese(TangoEntity entity) {
    return Row(
      children: [
        Assets.image.japanFuji64.image(height: _iconHeight, width: _iconWidth),
        const SizedBox(width: 12),
        Flexible(child:
        TextWidget.titleGrayLargeBold(entity.japanese, maxLines: 2,),),
      ],
    );
  }

  Widget _english(TangoEntity entity) {
    return Row(
      children: [
        Assets.image.english64.image(height: _iconHeight, width: _iconWidth),
        const SizedBox(width: 12),
        Flexible(child: TextWidget.titleGrayLargeBold(entity.english, maxLines: 2)),
      ],
    );
  }

  Widget _exampleHeader() {
    return Row(
      children: [
        TextWidget.titleRedMedium('例文'),
        const SizedBox(width: 12),
        Flexible(child: _separater())
      ],
    );
  }

  Widget _descriptionHeader(TangoEntity entity) {
    return Visibility(
      visible: entity.description != null && entity.description != '',
      child: Row(
        children: [
          TextWidget.titleRedMedium('豆知識'),
          const SizedBox(width: 12),
          Flexible(child: _separater()),
        ],
      ),
    );
  }

  Widget _example(TangoEntity entity) {
    return Row(
      children: [
        Assets.image.example64.image(height: _iconHeight, width: _iconWidth),
        const SizedBox(width: 12),
        Flexible(child: TextWidget.titleBlackLargeBold(entity.example!, maxLines: 5)),
      ],
    );
  }

  Widget _exampleJp(TangoEntity entity) {
    return Row(
      children: [
        Assets.image.japan64.image(height: _iconHeight, width: _iconWidth),
        const SizedBox(width: 12),
        Flexible(child: TextWidget.titleGrayMediumBold(entity.exampleJp!, maxLines: 5)),
      ],
    );
  }

  Widget _description(TangoEntity entity) {
    return Visibility(
      visible: entity.description != null && entity.description != '',
      child: Row(
        children: [
          Assets.image.infoNotes.image(height: _iconHeight, width: _iconWidth),
          const SizedBox(width: 12),
          Flexible(child: TextWidget.titleGraySmallBold(entity.description ?? '', maxLines: 10)),
        ],
      ),
    );
  }

  Widget _separater() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        height: 1,
        width: double.infinity,
        color: ColorConstants.bgGreySeparater,
      ),
    );
  }
}
