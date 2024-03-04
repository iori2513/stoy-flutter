import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stoy/domain/entities/body/body.dart';

part 'body_data_list_state.freezed.dart';

@freezed
class BodyDataListState with _$BodyDataListState {
  const factory BodyDataListState({
    @Default([]) List<Body> bodyDataList,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _BodyDataListState;

  factory BodyDataListState.initial() =>
      const BodyDataListState(bodyDataList: []);
}
