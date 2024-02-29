import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/domain/entities/diet/diet.dart';
import 'package:stoy/domain/use_cases/diet/fetch_diet_list_use_case.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_state.dart';
import 'package:stoy/presentation/providers/shared/diet/diet_list/diet_list_state.dart';

class DietListNotifier extends StateNotifier<DietListState> {
  final FetchDietListUseCase fetchDietListUseCase;
  final AuthState authState;
  StreamSubscription<List<Diet>>? _dietSubscription;

  DietListNotifier(
      {required this.fetchDietListUseCase, required this.authState})
      : super(DietListState.initial()) {
    _subscribeToDietList();
  }

  void _subscribeToDietList() {
    final String userId = authState.user.userId;

    // UseCaseからストリームを購読します。
    _dietSubscription = fetchDietListUseCase.call(userId).listen(
      (diets) {
        state =
            state.copyWith(diets: diets, isLoading: false, errorMessage: null);
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
