// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tango_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TangoEntityImpl _$$TangoEntityImplFromJson(Map<String, dynamic> json) =>
    _$TangoEntityImpl(
      id: (json['id'] as num).toInt(),
      indonesian: json['indonesian'] as String,
      japanese: json['japanese'] as String,
      english: json['english'] as String,
      description: json['description'] as String?,
      example: json['example'] as String?,
      exampleJp: json['example_jp'] as String?,
      level: (json['level'] as num).toInt(),
      partOfSpeech: (json['part_of_speech'] as num).toInt(),
      category: (json['category'] as num?)?.toInt(),
      frequency: (json['frequency'] as num?)?.toInt(),
      rankFrequency: (json['ranking_frequency'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TangoEntityImplToJson(_$TangoEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'indonesian': instance.indonesian,
      'japanese': instance.japanese,
      'english': instance.english,
      'description': instance.description,
      'example': instance.example,
      'example_jp': instance.exampleJp,
      'level': instance.level,
      'part_of_speech': instance.partOfSpeech,
      'category': instance.category,
      'frequency': instance.frequency,
      'ranking_frequency': instance.rankFrequency,
    };
