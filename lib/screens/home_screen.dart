import 'package:flutter/material.dart';

import 'widgets/personal_info_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            const Expanded(flex: 1, child: PersonalInfoWidget()),
            Expanded(flex: 3, child: Container(color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}
