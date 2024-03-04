import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/domain/entities/body/body.dart';
import 'package:stoy/domain/use_cases/body/fetch_body_data_list_use_case.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_state.dart';
import 'package:stoy/presentation/providers/shared/body/body_data_list/body_data_list_state.dart';

class BodyDataListNotifier extends StateNotifier<BodyDataListState> {
  final FetchBodyDataListUseCase fetchBodyDataListUseCase;
  final AuthState authState;
  StreamSubscription<List<Body>>? _dietSubscription;

  BodyDataListNotifier(
      {required this.fetchBodyDataListUseCase, required this.authState})
      : super(BodyDataListState.initial()) {
    _subscribeToDietList();
  }

  void _subscribeToDietList() {
    final String userId = authState.user.userId;

    _dietSubscription = fetchBodyDataListUseCase.call(userId).listen(
      (bodyDataList) {
        state = state.copyWith(
            bodyDataList: bodyDataList, isLoading: false, errorMessage: null);
      },
      onError: (error) {
        state =
            state.copyWith(isLoading: false, errorMessage: error.toString());
      },
    );
  }

  @override
  void dispose() {
    _dietSubscription?.cancel();
    super.dispose();
  }
}
