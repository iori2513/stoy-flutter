import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/domain/entities/body/body.dart';
import 'package:stoy/domain/entities/diet/diet.dart';
import 'package:stoy/presentation/pages/body/body_data_detail_page.dart';
import 'package:stoy/presentation/pages/diet/diet_detail_page.dart';
import 'package:stoy/presentation/providers/shared/auth/auth_state.dart';
import 'package:stoy/presentation/providers/single/record/record_state.dart';

class RecordNotifier extends StateNotifier<RecordState> {
  final AuthState authState;

  RecordNotifier({required this.authState}) : super(RecordState.initial());

  void onChangeDate(DateTime date) {
    state = state.copyWith(date: date);
  }

  void pressCreateButton(BuildContext context) {
    switch (state.tab) {
      case TabType.diet:
        return _goToCreateDietPage(context);
      case TabType.body:
        return _goToCreateBodyDataPage(context);
      default:
        return;
    }
  }

  void _goToCreateBodyDataPage(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BodyDataDetailPage(
            bodyData: Body.empty(userId: '', date: state.date),
          ),
        ));
  }

  void goToEditBodyDataPage(
      {required BuildContext context, required Body bodyData}) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BodyDataDetailPage(
            bodyData: bodyData,
          ),
        ));
  }

  void _goToCreateDietPage(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              DietDetailPage(Diet.empty(userId: '', date: state.date)),
        ));
  }

  void goToEditDietPage({required BuildContext context, required Diet diet}) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DietDetailPage(diet),
        ));
  }

  void switchTab(TabType tabType) {
    state = state.copyWith(tab: tabType);
  }
}
