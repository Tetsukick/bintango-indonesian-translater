import 'package:freezed_annotation/freezed_annotation.dart';

part 'tango_entity.freezed.dart';
part 'tango_entity.g.dart';

@freezed
class TangoEntity with _$TangoEntity {

  const factory TangoEntity({
    required int id,
    required String indonesian,
    required String japanese,
    required String english,
    String? description,
    required String? example,
    @JsonKey(name: 'example_jp') required String? exampleJp,
    required int level,
    @JsonKey(name: 'part_of_speech') required int partOfSpeech,
    int? category,
    int? frequency,
    @JsonKey(name: 'ranking_frequency') int? rankFrequency
  }) = _TangoEntity;

  factory TangoEntity.fromJson(Map<String, dynamic> json) => _$TangoEntityFromJson(json);
}
