import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_provider.dart';
import 'package:stoy/presentation/providers/single/record/record_notifier.dart';
import 'package:stoy/presentation/providers/single/record/record_state.dart';

final recordNotifierProvider =
    StateNotifierProvider.autoDispose<RecordNotifier, RecordState>((ref) {
  final authUserState = ref.watch(authNotifierProvider);
  return RecordNotifier(authState: authUserState);
});
