// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Body {
  String get docId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  double get fatPercentage => throw _privateConstructorUsedError;
  double get bodyTemp => throw _privateConstructorUsedError;
  String get ymd => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BodyCopyWith<Body> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyCopyWith<$Res> {
  factory $BodyCopyWith(Body value, $Res Function(Body) then) =
      _$BodyCopyWithImpl<$Res, Body>;
  @useResult
  $Res call(
      {String docId,
      String userId,
      double weight,
      double fatPercentage,
      double bodyTemp,
      String ymd,
      String memo});
}

/// @nodoc
class _$BodyCopyWithImpl<$Res, $Val extends Body>
    implements $BodyCopyWith<$Res> {
  _$BodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docId = null,
    Object? userId = null,
    Object? weight = null,
    Object? fatPercentage = null,
    Object? bodyTemp = null,
    Object? ymd = null,
    Object? memo = null,
  }) {
    return _then(_value.copyWith(
      docId: null == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      fatPercentage: null == fatPercentage
          ? _value.fatPercentage
          : fatPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      bodyTemp: null == bodyTemp
          ? _value.bodyTemp
          : bodyTemp // ignore: cast_nullable_to_non_nullable
              as double,
      ymd: null == ymd
          ? _value.ymd
          : ymd // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyImplCopyWith<$Res> implements $BodyCopyWith<$Res> {
  factory _$$BodyImplCopyWith(
          _$BodyImpl value, $Res Function(_$BodyImpl) then) =
      __$$BodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String docId,
      String userId,
      double weight,
      double fatPercentage,
      double bodyTemp,
      String ymd,
      String memo});
}

/// @nodoc
class __$$BodyImplCopyWithImpl<$Res>
    extends _$BodyCopyWithImpl<$Res, _$BodyImpl>
    implements _$$BodyImplCopyWith<$Res> {
  __$$BodyImplCopyWithImpl(_$BodyImpl _value, $Res Function(_$BodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docId = null,
    Object? userId = null,
    Object? weight = null,
    Object? fatPercentage = null,
    Object? bodyTemp = null,
    Object? ymd = null,
    Object? memo = null,
  }) {
    return _then(_$BodyImpl(
      docId: null == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      fatPercentage: null == fatPercentage
          ? _value.fatPercentage
          : fatPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      bodyTemp: null == bodyTemp
          ? _value.bodyTemp
          : bodyTemp // ignore: cast_nullable_to_non_nullable
              as double,
      ymd: null == ymd
          ? _value.ymd
          : ymd // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BodyImpl implements _Body {
  const _$BodyImpl(
      {required this.docId,
      required this.userId,
      required this.weight,
      required this.fatPercentage,
      required this.bodyTemp,
      required this.ymd,
      this.memo = ''});

  @override
  final String docId;
  @override
  final String userId;
  @override
  final double weight;
  @override
  final double fatPercentage;
  @override
  final double bodyTemp;
  @override
  final String ymd;
  @override
  @JsonKey()
  final String memo;

  @override
  String toString() {
    return 'Body(docId: $docId, userId: $userId, weight: $weight, fatPercentage: $fatPercentage, bodyTemp: $bodyTemp, ymd: $ymd, memo: $memo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyImpl &&
            (identical(other.docId, docId) || other.docId == docId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.fatPercentage, fatPercentage) ||
                other.fatPercentage == fatPercentage) &&
            (identical(other.bodyTemp, bodyTemp) ||
                other.bodyTemp == bodyTemp) &&
            (identical(other.ymd, ymd) || other.ymd == ymd) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, docId, userId, weight, fatPercentage, bodyTemp, ymd, memo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyImplCopyWith<_$BodyImpl> get copyWith =>
      __$$BodyImplCopyWithImpl<_$BodyImpl>(this, _$identity);
}

abstract class _Body implements Body {
  const factory _Body(
      {required final String docId,
      required final String userId,
      required final double weight,
      required final double fatPercentage,
      required final double bodyTemp,
      required final String ymd,
      final String memo}) = _$BodyImpl;

  @override
  String get docId;
  @override
  String get userId;
  @override
  double get weight;
  @override
  double get fatPercentage;
  @override
  double get bodyTemp;
  @override
  String get ymd;
  @override
  String get memo;
  @override
  @JsonKey(ignore: true)
  _$$BodyImplCopyWith<_$BodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
