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
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  Nutrition get nutrition => throw _privateConstructorUsedError;
  TimeOfDay get time => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
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
      {String title,
      String content,
      DateTime date,
      Nutrition nutrition,
      TimeOfDay time,
      bool isLoading,
      String? errorMessage});
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
    Object? title = null,
    Object? content = null,
    Object? date = null,
    Object? nutrition = null,
    Object? time = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as Nutrition,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
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
      {String title,
      String content,
      DateTime date,
      Nutrition nutrition,
      TimeOfDay time,
      bool isLoading,
      String? errorMessage});
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
    Object? title = null,
    Object? content = null,
    Object? date = null,
    Object? nutrition = null,
    Object? time = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$DietDetailStateImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as Nutrition,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
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

class _$DietDetailStateImpl implements _DietDetailState {
  const _$DietDetailStateImpl(
      {this.title = '',
      this.content = '',
      required this.date,
      required this.nutrition,
      required this.time,
      this.isLoading = false,
      this.errorMessage});

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String content;
  @override
  final DateTime date;
  @override
  final Nutrition nutrition;
  @override
  final TimeOfDay time;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'DietDetailState(title: $title, content: $content, date: $date, nutrition: $nutrition, time: $time, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DietDetailStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, content, date, nutrition,
      time, isLoading, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DietDetailStateImplCopyWith<_$DietDetailStateImpl> get copyWith =>
      __$$DietDetailStateImplCopyWithImpl<_$DietDetailStateImpl>(
          this, _$identity);
}

abstract class _DietDetailState implements DietDetailState {
  const factory _DietDetailState(
      {final String title,
      final String content,
      required final DateTime date,
      required final Nutrition nutrition,
      required final TimeOfDay time,
      final bool isLoading,
      final String? errorMessage}) = _$DietDetailStateImpl;

  @override
  String get title;
  @override
  String get content;
  @override
  DateTime get date;
  @override
  Nutrition get nutrition;
  @override
  TimeOfDay get time;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$DietDetailStateImplCopyWith<_$DietDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
