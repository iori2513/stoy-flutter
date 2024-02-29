import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_provider.dart';
import 'package:stoy/presentation/providers/shared/diet/diet_list/diet_list_notifier.dart';
import 'package:stoy/presentation/providers/shared/diet/diet_list/diet_list_state.dart';
import 'package:stoy/presentation/providers/shared/diet/diet_provider.dart';

final dietListNotifierProvider =
    StateNotifierProvider.autoDispose<DietListNotifier, DietListState>((ref) {
  final dietListUseCase = ref.watch(dietListUseCaseProvider);
  final authState = ref.watch(authNotifierProvider);
  return DietListNotifier(dietListUseCase, authState);
});
