import 'package:flutter/material.dart';

Future pickTime(BuildContext context, TimeOfDay initialTime) async {
  final newTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
      initialEntryMode: TimePickerEntryMode.inputOnly,
      errorInvalidText: '無効な時間です',
      helpText: '時間を入力',
      hourLabelText: '時',
      minuteLabelText: '分');
  return newTime;
}
