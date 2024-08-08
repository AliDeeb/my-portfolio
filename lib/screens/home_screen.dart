import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/screens/widgets/applications_section.dart';

import '../core/theme/custom_theme_colors.dart';
import 'widgets/about_me_widget.dart';
import 'widgets/education_section.dart';
import 'widgets/personal_info_widget.dart';
import 'widgets/professional_skills_widget.dart';
import 'widgets/theme_switcher.dart';
import 'widgets/tools_widget.dart';
import 'widgets/work_experiences_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final gradient =
        Theme.of(context).extension<CustomThemeColors>()?.toolsSectionGradient;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(flex: 1, child: PersonalInfoWidget()),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsetsDirectional.only(end: 75.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    100.verticalSpace,
                    const AboutMeWidget(),
                    50.verticalSpace,
                    const WorkExperiencesWidget(),
                    50.verticalSpace,
                    const EducationSection(),
                    50.verticalSpace,
                    const ApplicationsSection(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(gradient: gradient),
                child: Column(
                  children: [
                    50.verticalSpace,
                    const ThemeSwitcher(),
                    50.verticalSpace,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const ToolsWidget(),
                          50.verticalSpace,
                          const ProfessionalSkillsWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
