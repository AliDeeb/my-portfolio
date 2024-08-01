import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/about_me_widget.dart';
import 'widgets/personal_info_widget.dart';
import 'widgets/tools_widget.dart';
import 'widgets/work_experience_widget.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(flex: 1, child: PersonalInfoWidget()),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AboutMeWidget(),
                  50.verticalSpace,
                  const WorkExperienceWidget(),
                ],
              ),
            ),
            const Expanded(flex: 1, child: ToolsWidget()),
          ],
        ),
      ),
    );
  }
}
