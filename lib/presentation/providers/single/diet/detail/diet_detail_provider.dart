import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/domain/entities/diet/diet.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_provider.dart';
import 'package:stoy/presentation/providers/shared/diet/diet_provider.dart';
import 'package:stoy/presentation/providers/single/diet/detail/diet_detail_notifier.dart';
import 'package:stoy/presentation/providers/single/diet/detail/diet_detail_state.dart';

final dietDetailProvider = StateNotifierProvider.autoDispose
    .family<DietDetailNotifier, DietDetailState, Diet>((ref, diet) {
  final addDietUseCase = ref.watch(addDietUseCaseProvider);
  final updateDietUseCase = ref.watch(updateDietUseCaseProvider);
  final authState = ref.watch(authNotifierProvider);
  return DietDetailNotifier(
      addDietUseCase: addDietUseCase,
      updateDietUseCase: updateDietUseCase,
      authState: authState,
      diet: diet);
});
