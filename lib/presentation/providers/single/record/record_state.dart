import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stoy/presentation/providers/shared/diet/diet_list/diet_list_state.dart';

part 'record_state.freezed.dart';

@freezed
class RecordState with _$RecordState {
  const factory RecordState({required DateTime date}) = _RecordState;

  factory RecordState.initial() => RecordState(date: DateTime.now());
}
