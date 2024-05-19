// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tango_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TangoEntity _$TangoEntityFromJson(Map<String, dynamic> json) {
  return _TangoEntity.fromJson(json);
}

/// @nodoc
mixin _$TangoEntity {
  int get id => throw _privateConstructorUsedError;
  String get indonesian => throw _privateConstructorUsedError;
  String get japanese => throw _privateConstructorUsedError;
  String get english => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get example => throw _privateConstructorUsedError;
  @JsonKey(name: 'example_jp')
  String? get exampleJp => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'part_of_speech')
  int get partOfSpeech => throw _privateConstructorUsedError;
  int? get category => throw _privateConstructorUsedError;
  int? get frequency => throw _privateConstructorUsedError;
  @JsonKey(name: 'ranking_frequency')
  int? get rankFrequency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TangoEntityCopyWith<TangoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TangoEntityCopyWith<$Res> {
  factory $TangoEntityCopyWith(
          TangoEntity value, $Res Function(TangoEntity) then) =
      _$TangoEntityCopyWithImpl<$Res, TangoEntity>;
  @useResult
  $Res call(
      {int id,
      String indonesian,
      String japanese,
      String english,
      String? description,
      String? example,
      @JsonKey(name: 'example_jp') String? exampleJp,
      int level,
      @JsonKey(name: 'part_of_speech') int partOfSpeech,
      int? category,
      int? frequency,
      @JsonKey(name: 'ranking_frequency') int? rankFrequency});
}

/// @nodoc
class _$TangoEntityCopyWithImpl<$Res, $Val extends TangoEntity>
    implements $TangoEntityCopyWith<$Res> {
  _$TangoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? indonesian = null,
    Object? japanese = null,
    Object? english = null,
    Object? description = freezed,
    Object? example = freezed,
    Object? exampleJp = freezed,
    Object? level = null,
    Object? partOfSpeech = null,
    Object? category = freezed,
    Object? frequency = freezed,
    Object? rankFrequency = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      indonesian: null == indonesian
          ? _value.indonesian
          : indonesian // ignore: cast_nullable_to_non_nullable
              as String,
      japanese: null == japanese
          ? _value.japanese
          : japanese // ignore: cast_nullable_to_non_nullable
              as String,
      english: null == english
          ? _value.english
          : english // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      example: freezed == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
      exampleJp: freezed == exampleJp
          ? _value.exampleJp
          : exampleJp // ignore: cast_nullable_to_non_nullable
              as String?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      partOfSpeech: null == partOfSpeech
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as int,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int?,
      rankFrequency: freezed == rankFrequency
          ? _value.rankFrequency
          : rankFrequency // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TangoEntityImplCopyWith<$Res>
    implements $TangoEntityCopyWith<$Res> {
  factory _$$TangoEntityImplCopyWith(
          _$TangoEntityImpl value, $Res Function(_$TangoEntityImpl) then) =
      __$$TangoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String indonesian,
      String japanese,
      String english,
      String? description,
      String? example,
      @JsonKey(name: 'example_jp') String? exampleJp,
      int level,
      @JsonKey(name: 'part_of_speech') int partOfSpeech,
      int? category,
      int? frequency,
      @JsonKey(name: 'ranking_frequency') int? rankFrequency});
}

/// @nodoc
class __$$TangoEntityImplCopyWithImpl<$Res>
    extends _$TangoEntityCopyWithImpl<$Res, _$TangoEntityImpl>
    implements _$$TangoEntityImplCopyWith<$Res> {
  __$$TangoEntityImplCopyWithImpl(
      _$TangoEntityImpl _value, $Res Function(_$TangoEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? indonesian = null,
    Object? japanese = null,
    Object? english = null,
    Object? description = freezed,
    Object? example = freezed,
    Object? exampleJp = freezed,
    Object? level = null,
    Object? partOfSpeech = null,
    Object? category = freezed,
    Object? frequency = freezed,
    Object? rankFrequency = freezed,
  }) {
    return _then(_$TangoEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      indonesian: null == indonesian
          ? _value.indonesian
          : indonesian // ignore: cast_nullable_to_non_nullable
              as String,
      japanese: null == japanese
          ? _value.japanese
          : japanese // ignore: cast_nullable_to_non_nullable
              as String,
      english: null == english
          ? _value.english
          : english // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      example: freezed == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
      exampleJp: freezed == exampleJp
          ? _value.exampleJp
          : exampleJp // ignore: cast_nullable_to_non_nullable
              as String?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      partOfSpeech: null == partOfSpeech
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as int,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int?,
      rankFrequency: freezed == rankFrequency
          ? _value.rankFrequency
          : rankFrequency // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TangoEntityImpl implements _TangoEntity {
  const _$TangoEntityImpl(
      {required this.id,
      required this.indonesian,
      required this.japanese,
      required this.english,
      this.description,
      required this.example,
      @JsonKey(name: 'example_jp') required this.exampleJp,
      required this.level,
      @JsonKey(name: 'part_of_speech') required this.partOfSpeech,
      this.category,
      this.frequency,
      @JsonKey(name: 'ranking_frequency') this.rankFrequency});

  factory _$TangoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TangoEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String indonesian;
  @override
  final String japanese;
  @override
  final String english;
  @override
  final String? description;
  @override
  final String? example;
  @override
  @JsonKey(name: 'example_jp')
  final String? exampleJp;
  @override
  final int level;
  @override
  @JsonKey(name: 'part_of_speech')
  final int partOfSpeech;
  @override
  final int? category;
  @override
  final int? frequency;
  @override
  @JsonKey(name: 'ranking_frequency')
  final int? rankFrequency;

  @override
  String toString() {
    return 'TangoEntity(id: $id, indonesian: $indonesian, japanese: $japanese, english: $english, description: $description, example: $example, exampleJp: $exampleJp, level: $level, partOfSpeech: $partOfSpeech, category: $category, frequency: $frequency, rankFrequency: $rankFrequency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TangoEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.indonesian, indonesian) ||
                other.indonesian == indonesian) &&
            (identical(other.japanese, japanese) ||
                other.japanese == japanese) &&
            (identical(other.english, english) || other.english == english) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.example, example) || other.example == example) &&
            (identical(other.exampleJp, exampleJp) ||
                other.exampleJp == exampleJp) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.partOfSpeech, partOfSpeech) ||
                other.partOfSpeech == partOfSpeech) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.rankFrequency, rankFrequency) ||
                other.rankFrequency == rankFrequency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      indonesian,
      japanese,
      english,
      description,
      example,
      exampleJp,
      level,
      partOfSpeech,
      category,
      frequency,
      rankFrequency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TangoEntityImplCopyWith<_$TangoEntityImpl> get copyWith =>
      __$$TangoEntityImplCopyWithImpl<_$TangoEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TangoEntityImplToJson(
      this,
    );
  }
}

abstract class _TangoEntity implements TangoEntity {
  const factory _TangoEntity(
          {required final int id,
          required final String indonesian,
          required final String japanese,
          required final String english,
          final String? description,
          required final String? example,
          @JsonKey(name: 'example_jp') required final String? exampleJp,
          required final int level,
          @JsonKey(name: 'part_of_speech') required final int partOfSpeech,
          final int? category,
          final int? frequency,
          @JsonKey(name: 'ranking_frequency') final int? rankFrequency}) =
      _$TangoEntityImpl;

  factory _TangoEntity.fromJson(Map<String, dynamic> json) =
      _$TangoEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get indonesian;
  @override
  String get japanese;
  @override
  String get english;
  @override
  String? get description;
  @override
  String? get example;
  @override
  @JsonKey(name: 'example_jp')
  String? get exampleJp;
  @override
  int get level;
  @override
  @JsonKey(name: 'part_of_speech')
  int get partOfSpeech;
  @override
  int? get category;
  @override
  int? get frequency;
  @override
  @JsonKey(name: 'ranking_frequency')
  int? get rankFrequency;
  @override
  @JsonKey(ignore: true)
  _$$TangoEntityImplCopyWith<_$TangoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
