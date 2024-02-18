import 'package:flutter/material.dart';
import 'package:stoy/constants/app_color.dart';
import 'package:stoy/presentation/pages/diet_create_page.dart';
import 'package:stoy/presentation/widgets/diet/diet_panel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DietCreatePage()));
          },
          child: const DietPanel()),
    );
  }
}
