import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_provider.dart';
import 'package:stoy/presentation/providers/shared/body/body_data_list/body_data_list_notifier.dart';
import 'package:stoy/presentation/providers/shared/body/body_data_list/body_data_list_state.dart';
import 'package:stoy/presentation/providers/shared/body/body_provider.dart';

final bodyDataListNotifierProvider =
    StateNotifierProvider.autoDispose<BodyDataListNotifier, BodyDataListState>(
        (ref) {
  final fetchBodyDataListUseCase = ref.watch(fetchBodyDataListUseCaseProvider);
  final authState = ref.watch(authNotifierProvider);
  return BodyDataListNotifier(
      fetchBodyDataListUseCase: fetchBodyDataListUseCase, authState: authState);
});
