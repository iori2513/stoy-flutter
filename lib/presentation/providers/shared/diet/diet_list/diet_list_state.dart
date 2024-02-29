import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stoy/domain/entities/diet/diet.dart';

part 'diet_list_state.freezed.dart';

@freezed
class DietListState with _$DietListState {
  const factory DietListState({
    @Default([]) List<Diet> diets,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _DietListState;

  factory DietListState.initial() => const DietListState(diets: []);
}
