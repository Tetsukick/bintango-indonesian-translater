// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translate_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TranslateState {
  bool get isLoading => throw _privateConstructorUsedError;
  set isLoading(bool value) => throw _privateConstructorUsedError;
  bool get isLanguageSourceJapanese => throw _privateConstructorUsedError;
  set isLanguageSourceJapanese(bool value) =>
      throw _privateConstructorUsedError;
  String get inputtedText => throw _privateConstructorUsedError;
  set inputtedText(String value) => throw _privateConstructorUsedError;
  TranslateResponse? get translateResponse =>
      throw _privateConstructorUsedError;
  set translateResponse(TranslateResponse? value) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TranslateStateCopyWith<TranslateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslateStateCopyWith<$Res> {
  factory $TranslateStateCopyWith(
          TranslateState value, $Res Function(TranslateState) then) =
      _$TranslateStateCopyWithImpl<$Res, TranslateState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isLanguageSourceJapanese,
      String inputtedText,
      TranslateResponse? translateResponse});

  $TranslateResponseCopyWith<$Res>? get translateResponse;
}

/// @nodoc
class _$TranslateStateCopyWithImpl<$Res, $Val extends TranslateState>
    implements $TranslateStateCopyWith<$Res> {
  _$TranslateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLanguageSourceJapanese = null,
    Object? inputtedText = null,
    Object? translateResponse = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLanguageSourceJapanese: null == isLanguageSourceJapanese
          ? _value.isLanguageSourceJapanese
          : isLanguageSourceJapanese // ignore: cast_nullable_to_non_nullable
              as bool,
      inputtedText: null == inputtedText
          ? _value.inputtedText
          : inputtedText // ignore: cast_nullable_to_non_nullable
              as String,
      translateResponse: freezed == translateResponse
          ? _value.translateResponse
          : translateResponse // ignore: cast_nullable_to_non_nullable
              as TranslateResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslateResponseCopyWith<$Res>? get translateResponse {
    if (_value.translateResponse == null) {
      return null;
    }

    return $TranslateResponseCopyWith<$Res>(_value.translateResponse!, (value) {
      return _then(_value.copyWith(translateResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TranslateStateImplCopyWith<$Res>
    implements $TranslateStateCopyWith<$Res> {
  factory _$$TranslateStateImplCopyWith(_$TranslateStateImpl value,
          $Res Function(_$TranslateStateImpl) then) =
      __$$TranslateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isLanguageSourceJapanese,
      String inputtedText,
      TranslateResponse? translateResponse});

  @override
  $TranslateResponseCopyWith<$Res>? get translateResponse;
}

/// @nodoc
class __$$TranslateStateImplCopyWithImpl<$Res>
    extends _$TranslateStateCopyWithImpl<$Res, _$TranslateStateImpl>
    implements _$$TranslateStateImplCopyWith<$Res> {
  __$$TranslateStateImplCopyWithImpl(
      _$TranslateStateImpl _value, $Res Function(_$TranslateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLanguageSourceJapanese = null,
    Object? inputtedText = null,
    Object? translateResponse = freezed,
  }) {
    return _then(_$TranslateStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLanguageSourceJapanese: null == isLanguageSourceJapanese
          ? _value.isLanguageSourceJapanese
          : isLanguageSourceJapanese // ignore: cast_nullable_to_non_nullable
              as bool,
      inputtedText: null == inputtedText
          ? _value.inputtedText
          : inputtedText // ignore: cast_nullable_to_non_nullable
              as String,
      translateResponse: freezed == translateResponse
          ? _value.translateResponse
          : translateResponse // ignore: cast_nullable_to_non_nullable
              as TranslateResponse?,
    ));
  }
}

/// @nodoc

class _$TranslateStateImpl implements _TranslateState {
  _$TranslateStateImpl(
      {this.isLoading = false,
      this.isLanguageSourceJapanese = false,
      this.inputtedText = '',
      this.translateResponse});

  @override
  @JsonKey()
  bool isLoading;
  @override
  @JsonKey()
  bool isLanguageSourceJapanese;
  @override
  @JsonKey()
  String inputtedText;
  @override
  TranslateResponse? translateResponse;

  @override
  String toString() {
    return 'TranslateState(isLoading: $isLoading, isLanguageSourceJapanese: $isLanguageSourceJapanese, inputtedText: $inputtedText, translateResponse: $translateResponse)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslateStateImplCopyWith<_$TranslateStateImpl> get copyWith =>
      __$$TranslateStateImplCopyWithImpl<_$TranslateStateImpl>(
          this, _$identity);
}

abstract class _TranslateState implements TranslateState {
  factory _TranslateState(
      {bool isLoading,
      bool isLanguageSourceJapanese,
      String inputtedText,
      TranslateResponse? translateResponse}) = _$TranslateStateImpl;

  @override
  bool get isLoading;
  set isLoading(bool value);
  @override
  bool get isLanguageSourceJapanese;
  set isLanguageSourceJapanese(bool value);
  @override
  String get inputtedText;
  set inputtedText(String value);
  @override
  TranslateResponse? get translateResponse;
  set translateResponse(TranslateResponse? value);
  @override
  @JsonKey(ignore: true)
  _$$TranslateStateImplCopyWith<_$TranslateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
