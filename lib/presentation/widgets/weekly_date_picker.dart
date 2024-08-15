import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';

class WeeklyDatePicker extends StatefulWidget {
  final Function(DateTime date) onChangeDate;

  const WeeklyDatePicker({super.key, required this.onChangeDate});

  @override
  State<WeeklyDatePicker> createState() => _WeeklyDatePickerState();
}

class _WeeklyDatePickerState extends State<WeeklyDatePicker> {
  CalendarWeekController controller = CalendarWeekController();

  @override
  Widget build(BuildContext context) {
    return CalendarWeek(
      controller: controller,
      height: 20,
      showMonth: true,
      minDate: DateTime.now().add(
        const Duration(days: -90),
      ),
      maxDate: DateTime.now().add(
        const Duration(days: 90),
      ),
      onDatePressed: (DateTime datetime) {
        widget.onChangeDate(datetime);
      },
      onDateLongPressed: (DateTime datetime) {
        // Do something
      },
      onWeekChanged: () {
        // Do something
      },
      // monthViewBuilder: (DateTime time) => Align(
      //   alignment: FractionalOffset.center,
      //   child: Container(
      //       margin: const EdgeInsets.symmetric(vertical: 4),
      //       child: Text(
      //         DateFormat('yyyy-MM-dd').format(time),
      //         overflow: TextOverflow.ellipsis,
      //         textAlign: TextAlign.center,
      //         style: const TextStyle(
      //             color: Colors.blue, fontWeight: FontWeight.w600),
      //       )),
      // ),
    );
  }
}
