import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stoy/domain/entities/body/body.dart';

part 'body_detail_state.freezed.dart';

@freezed
class BodyDetailState with _$BodyDetailState {
  const factory BodyDetailState({
    required Body bodyData,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _BodyDetailState;

  factory BodyDetailState.initial() =>
      BodyDetailState(bodyData: Body.empty(userId: '', date: DateTime.now()));
}
