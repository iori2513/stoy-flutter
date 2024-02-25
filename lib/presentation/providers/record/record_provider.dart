import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/presentation/providers/record/record_notifier.dart';
import 'package:stoy/presentation/providers/record/record_state.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_provider.dart';
import 'package:stoy/presentation/providers/shared/diet/diet_provider.dart';

final recordNotifierProvider =
    StateNotifierProvider<RecordNotifier, RecordState>((ref) {
  final dietList = ref.watch(dietListUseCaseProvider);
  final authUserState = ref.watch(authNotifierProvider);
  return RecordNotifier(dietList, authUserState);
});
