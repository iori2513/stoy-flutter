// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diet_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DietDetailState {
  Diet get diet => throw _privateConstructorUsedError;
  TimeOfDay get time => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingImage => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DietDetailStateCopyWith<DietDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietDetailStateCopyWith<$Res> {
  factory $DietDetailStateCopyWith(
          DietDetailState value, $Res Function(DietDetailState) then) =
      _$DietDetailStateCopyWithImpl<$Res, DietDetailState>;
  @useResult
  $Res call(
      {Diet diet,
      TimeOfDay time,
      bool isLoading,
      bool isLoadingImage,
      String? errorMessage});

  $DietCopyWith<$Res> get diet;
}

/// @nodoc
class _$DietDetailStateCopyWithImpl<$Res, $Val extends DietDetailState>
    implements $DietDetailStateCopyWith<$Res> {
  _$DietDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diet = null,
    Object? time = null,
    Object? isLoading = null,
    Object? isLoadingImage = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      diet: null == diet
          ? _value.diet
          : diet // ignore: cast_nullable_to_non_nullable
              as Diet,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingImage: null == isLoadingImage
          ? _value.isLoadingImage
          : isLoadingImage // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DietCopyWith<$Res> get diet {
    return $DietCopyWith<$Res>(_value.diet, (value) {
      return _then(_value.copyWith(diet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DietDetailStateImplCopyWith<$Res>
    implements $DietDetailStateCopyWith<$Res> {
  factory _$$DietDetailStateImplCopyWith(_$DietDetailStateImpl value,
          $Res Function(_$DietDetailStateImpl) then) =
      __$$DietDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Diet diet,
      TimeOfDay time,
      bool isLoading,
      bool isLoadingImage,
      String? errorMessage});

  @override
  $DietCopyWith<$Res> get diet;
}

/// @nodoc
class __$$DietDetailStateImplCopyWithImpl<$Res>
    extends _$DietDetailStateCopyWithImpl<$Res, _$DietDetailStateImpl>
    implements _$$DietDetailStateImplCopyWith<$Res> {
  __$$DietDetailStateImplCopyWithImpl(
      _$DietDetailStateImpl _value, $Res Function(_$DietDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diet = null,
    Object? time = null,
    Object? isLoading = null,
    Object? isLoadingImage = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$DietDetailStateImpl(
      diet: null == diet
          ? _value.diet
          : diet // ignore: cast_nullable_to_non_nullable
              as Diet,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingImage: null == isLoadingImage
          ? _value.isLoadingImage
          : isLoadingImage // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DietDetailStateImpl implements _DietDetailState {
  const _$DietDetailStateImpl(
      {required this.diet,
      required this.time,
      this.isLoading = false,
      this.isLoadingImage = false,
      this.errorMessage});

  @override
  final Diet diet;
  @override
  final TimeOfDay time;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingImage;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'DietDetailState(diet: $diet, time: $time, isLoading: $isLoading, isLoadingImage: $isLoadingImage, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DietDetailStateImpl &&
            (identical(other.diet, diet) || other.diet == diet) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingImage, isLoadingImage) ||
                other.isLoadingImage == isLoadingImage) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, diet, time, isLoading, isLoadingImage, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DietDetailStateImplCopyWith<_$DietDetailStateImpl> get copyWith =>
      __$$DietDetailStateImplCopyWithImpl<_$DietDetailStateImpl>(
          this, _$identity);
}

abstract class _DietDetailState implements DietDetailState {
  const factory _DietDetailState(
      {required final Diet diet,
      required final TimeOfDay time,
      final bool isLoading,
      final bool isLoadingImage,
      final String? errorMessage}) = _$DietDetailStateImpl;

  @override
  Diet get diet;
  @override
  TimeOfDay get time;
  @override
  bool get isLoading;
  @override
  bool get isLoadingImage;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$DietDetailStateImplCopyWith<_$DietDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
