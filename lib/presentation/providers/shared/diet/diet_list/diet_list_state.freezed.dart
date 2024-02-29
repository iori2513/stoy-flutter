// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diet_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DietListState {
  List<Diet> get diets => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DietListStateCopyWith<DietListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietListStateCopyWith<$Res> {
  factory $DietListStateCopyWith(
          DietListState value, $Res Function(DietListState) then) =
      _$DietListStateCopyWithImpl<$Res, DietListState>;
  @useResult
  $Res call({List<Diet> diets, bool isLoading, String? errorMessage});
}

/// @nodoc
class _$DietListStateCopyWithImpl<$Res, $Val extends DietListState>
    implements $DietListStateCopyWith<$Res> {
  _$DietListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diets = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      diets: null == diets
          ? _value.diets
          : diets // ignore: cast_nullable_to_non_nullable
              as List<Diet>,
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
abstract class _$$DietListStateImplCopyWith<$Res>
    implements $DietListStateCopyWith<$Res> {
  factory _$$DietListStateImplCopyWith(
          _$DietListStateImpl value, $Res Function(_$DietListStateImpl) then) =
      __$$DietListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Diet> diets, bool isLoading, String? errorMessage});
}

/// @nodoc
class __$$DietListStateImplCopyWithImpl<$Res>
    extends _$DietListStateCopyWithImpl<$Res, _$DietListStateImpl>
    implements _$$DietListStateImplCopyWith<$Res> {
  __$$DietListStateImplCopyWithImpl(
      _$DietListStateImpl _value, $Res Function(_$DietListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diets = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$DietListStateImpl(
      diets: null == diets
          ? _value._diets
          : diets // ignore: cast_nullable_to_non_nullable
              as List<Diet>,
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

class _$DietListStateImpl implements _DietListState {
  const _$DietListStateImpl(
      {final List<Diet> diets = const [],
      this.isLoading = false,
      this.errorMessage})
      : _diets = diets;

  final List<Diet> _diets;
  @override
  @JsonKey()
  List<Diet> get diets {
    if (_diets is EqualUnmodifiableListView) return _diets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_diets);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'DietListState(diets: $diets, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DietListStateImpl &&
            const DeepCollectionEquality().equals(other._diets, _diets) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_diets), isLoading, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DietListStateImplCopyWith<_$DietListStateImpl> get copyWith =>
      __$$DietListStateImplCopyWithImpl<_$DietListStateImpl>(this, _$identity);
}

abstract class _DietListState implements DietListState {
  const factory _DietListState(
      {final List<Diet> diets,
      final bool isLoading,
      final String? errorMessage}) = _$DietListStateImpl;

  @override
  List<Diet> get diets;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$DietListStateImplCopyWith<_$DietListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
