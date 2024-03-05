import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/domain/entities/body/body.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_provider.dart';
import 'package:stoy/presentation/providers/shared/body/body_provider.dart';
import 'package:stoy/presentation/providers/single/body/detail/body_detail_notifier.dart';
import 'package:stoy/presentation/providers/single/body/detail/body_detail_state.dart';

final bodyDetailNotifierProvider = StateNotifierProvider.autoDispose
    .family<BodyDetailNotifier, BodyDetailState, Body>((ref, bodyData) {
  final addBodyDataUseCase = ref.watch(addBodyDataUseCaseProvider);
  final updateBodyDataUseCase = ref.watch(updateBodyDataUseCaseProvider);
  final authState = ref.watch(authNotifierProvider);
  return BodyDetailNotifier(
      addBodyDataUseCase: addBodyDataUseCase,
      updateBodyDataUseCase: updateBodyDataUseCase,
      authState: authState,
      bodyData: bodyData);
});
