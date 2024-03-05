// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_data_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BodyDataListState {
  List<Body> get bodyDataList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BodyDataListStateCopyWith<BodyDataListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyDataListStateCopyWith<$Res> {
  factory $BodyDataListStateCopyWith(
          BodyDataListState value, $Res Function(BodyDataListState) then) =
      _$BodyDataListStateCopyWithImpl<$Res, BodyDataListState>;
  @useResult
  $Res call({List<Body> bodyDataList, bool isLoading, String? errorMessage});
}

/// @nodoc
class _$BodyDataListStateCopyWithImpl<$Res, $Val extends BodyDataListState>
    implements $BodyDataListStateCopyWith<$Res> {
  _$BodyDataListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bodyDataList = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      bodyDataList: null == bodyDataList
          ? _value.bodyDataList
          : bodyDataList // ignore: cast_nullable_to_non_nullable
              as List<Body>,
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
abstract class _$$BodyDataListStateImplCopyWith<$Res>
    implements $BodyDataListStateCopyWith<$Res> {
  factory _$$BodyDataListStateImplCopyWith(_$BodyDataListStateImpl value,
          $Res Function(_$BodyDataListStateImpl) then) =
      __$$BodyDataListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Body> bodyDataList, bool isLoading, String? errorMessage});
}

/// @nodoc
class __$$BodyDataListStateImplCopyWithImpl<$Res>
    extends _$BodyDataListStateCopyWithImpl<$Res, _$BodyDataListStateImpl>
    implements _$$BodyDataListStateImplCopyWith<$Res> {
  __$$BodyDataListStateImplCopyWithImpl(_$BodyDataListStateImpl _value,
      $Res Function(_$BodyDataListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bodyDataList = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$BodyDataListStateImpl(
      bodyDataList: null == bodyDataList
          ? _value._bodyDataList
          : bodyDataList // ignore: cast_nullable_to_non_nullable
              as List<Body>,
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

class _$BodyDataListStateImpl implements _BodyDataListState {
  const _$BodyDataListStateImpl(
      {final List<Body> bodyDataList = const [],
      this.isLoading = false,
      this.errorMessage})
      : _bodyDataList = bodyDataList;

  final List<Body> _bodyDataList;
  @override
  @JsonKey()
  List<Body> get bodyDataList {
    if (_bodyDataList is EqualUnmodifiableListView) return _bodyDataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bodyDataList);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'BodyDataListState(bodyDataList: $bodyDataList, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyDataListStateImpl &&
            const DeepCollectionEquality()
                .equals(other._bodyDataList, _bodyDataList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bodyDataList),
      isLoading,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyDataListStateImplCopyWith<_$BodyDataListStateImpl> get copyWith =>
      __$$BodyDataListStateImplCopyWithImpl<_$BodyDataListStateImpl>(
          this, _$identity);
}

abstract class _BodyDataListState implements BodyDataListState {
  const factory _BodyDataListState(
      {final List<Body> bodyDataList,
      final bool isLoading,
      final String? errorMessage}) = _$BodyDataListStateImpl;

  @override
  List<Body> get bodyDataList;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$BodyDataListStateImplCopyWith<_$BodyDataListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
