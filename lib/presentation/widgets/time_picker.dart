import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay _time = TimeOfDay.now();

  Future _pickTime(BuildContext context) async {
    final newTime = await showTimePicker(
        context: context,
        initialTime: _time,
        initialEntryMode: TimePickerEntryMode.inputOnly,
        errorInvalidText: '無効な時間です',
        helpText: '時間を入力',
        hourLabelText: '時',
        minuteLabelText: '分');
    return newTime;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [],
    );
  }
}
