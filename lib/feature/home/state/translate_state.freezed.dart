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
  String get inputtedText => throw _privateConstructorUsedError;
  TranslateResponse? get translateResponse =>
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
  $Res call({String inputtedText, TranslateResponse? translateResponse});

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
    Object? inputtedText = null,
    Object? translateResponse = freezed,
  }) {
    return _then(_value.copyWith(
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
  $Res call({String inputtedText, TranslateResponse? translateResponse});

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
    Object? inputtedText = null,
    Object? translateResponse = freezed,
  }) {
    return _then(_$TranslateStateImpl(
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
  _$TranslateStateImpl({this.inputtedText = '', this.translateResponse});

  @override
  @JsonKey()
  final String inputtedText;
  @override
  final TranslateResponse? translateResponse;

  @override
  String toString() {
    return 'TranslateState(inputtedText: $inputtedText, translateResponse: $translateResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslateStateImpl &&
            (identical(other.inputtedText, inputtedText) ||
                other.inputtedText == inputtedText) &&
            (identical(other.translateResponse, translateResponse) ||
                other.translateResponse == translateResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inputtedText, translateResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslateStateImplCopyWith<_$TranslateStateImpl> get copyWith =>
      __$$TranslateStateImplCopyWithImpl<_$TranslateStateImpl>(
          this, _$identity);
}

abstract class _TranslateState implements TranslateState {
  factory _TranslateState(
      {final String inputtedText,
      final TranslateResponse? translateResponse}) = _$TranslateStateImpl;

  @override
  String get inputtedText;
  @override
  TranslateResponse? get translateResponse;
  @override
  @JsonKey(ignore: true)
  _$$TranslateStateImplCopyWith<_$TranslateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
