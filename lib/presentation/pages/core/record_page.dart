import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stoy/constants/app_color.dart';
import 'package:stoy/presentation/providers/record/record_provider.dart';
import 'package:stoy/presentation/widgets/weekly_date_picker.dart';

class RecordPage extends ConsumerWidget {
  const RecordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(recordNotifierProvider.notifier);
    final state = ref.watch(recordNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('STOY',
            style: TextStyle(
                color: AppColor.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20)),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          WeeklyDatePicker(onChangeDate: notifier.onChangeDate),
          Text(state.date.toString())
        ],
      ),
    );
  }
}
