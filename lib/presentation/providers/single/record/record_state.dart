import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_state.freezed.dart';

@freezed
class RecordState with _$RecordState {
  const factory RecordState({required DateTime date}) = _RecordState;

  factory RecordState.initial() => RecordState(date: DateTime.now());
}
