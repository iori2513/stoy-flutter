// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BodyDetailState {
  Body get bodyData => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BodyDetailStateCopyWith<BodyDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyDetailStateCopyWith<$Res> {
  factory $BodyDetailStateCopyWith(
          BodyDetailState value, $Res Function(BodyDetailState) then) =
      _$BodyDetailStateCopyWithImpl<$Res, BodyDetailState>;
  @useResult
  $Res call({Body bodyData, bool isLoading, String? errorMessage});

  $BodyCopyWith<$Res> get bodyData;
}

/// @nodoc
class _$BodyDetailStateCopyWithImpl<$Res, $Val extends BodyDetailState>
    implements $BodyDetailStateCopyWith<$Res> {
  _$BodyDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bodyData = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      bodyData: null == bodyData
          ? _value.bodyData
          : bodyData // ignore: cast_nullable_to_non_nullable
              as Body,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BodyCopyWith<$Res> get bodyData {
    return $BodyCopyWith<$Res>(_value.bodyData, (value) {
      return _then(_value.copyWith(bodyData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BodyDetailStateImplCopyWith<$Res>
    implements $BodyDetailStateCopyWith<$Res> {
  factory _$$BodyDetailStateImplCopyWith(_$BodyDetailStateImpl value,
          $Res Function(_$BodyDetailStateImpl) then) =
      __$$BodyDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Body bodyData, bool isLoading, String? errorMessage});

  @override
  $BodyCopyWith<$Res> get bodyData;
}

/// @nodoc
class __$$BodyDetailStateImplCopyWithImpl<$Res>
    extends _$BodyDetailStateCopyWithImpl<$Res, _$BodyDetailStateImpl>
    implements _$$BodyDetailStateImplCopyWith<$Res> {
  __$$BodyDetailStateImplCopyWithImpl(
      _$BodyDetailStateImpl _value, $Res Function(_$BodyDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bodyData = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$BodyDetailStateImpl(
      bodyData: null == bodyData
          ? _value.bodyData
          : bodyData // ignore: cast_nullable_to_non_nullable
              as Body,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BodyDetailStateImpl implements _BodyDetailState {
  const _$BodyDetailStateImpl(
      {required this.bodyData, this.isLoading = false, this.errorMessage});

  @override
  final Body bodyData;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'BodyDetailState(bodyData: $bodyData, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyDetailStateImpl &&
            (identical(other.bodyData, bodyData) ||
                other.bodyData == bodyData) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bodyData, isLoading, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyDetailStateImplCopyWith<_$BodyDetailStateImpl> get copyWith =>
      __$$BodyDetailStateImplCopyWithImpl<_$BodyDetailStateImpl>(
          this, _$identity);
}

abstract class _BodyDetailState implements BodyDetailState {
  const factory _BodyDetailState(
      {required final Body bodyData,
      final bool isLoading,
      final String? errorMessage}) = _$BodyDetailStateImpl;

  @override
  Body get bodyData;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$BodyDetailStateImplCopyWith<_$BodyDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
