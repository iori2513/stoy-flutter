import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_state.freezed.dart';

enum TabType { diet, body }

@freezed
class RecordState with _$RecordState {
  const factory RecordState({required DateTime date, required TabType tab}) =
      _RecordState;

  factory RecordState.initial() =>
      RecordState(date: DateTime.now(), tab: TabType.diet);
}
