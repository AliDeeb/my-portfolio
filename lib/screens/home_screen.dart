import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/theme/custom_theme_colors.dart';
import 'widgets/about_me_widget.dart';
import 'widgets/applications_section.dart';
import 'widgets/education_section.dart';
import 'widgets/personal_info_widget.dart';
import 'widgets/professional_skills_widget.dart';
import 'widgets/programming_languages_widget.dart';
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
    bool isLight = Theme.brightnessOf(context) == Brightness.light;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(flex: 1, child: PersonalInfoWidget()),
            10.horizontalSpace,
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.only(top: 100.h),
                decoration: BoxDecoration(
                  color: isLight ? Colors.grey.shade100 : Colors.grey.shade900,
                  border: Border.all(color: Colors.blueGrey, width: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsetsDirectional.only(
                  top: 50.h,
                  start: 20.w,
                  end: 75.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
            10.horizontalSpace,
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
                          const ProgrammingLanguages(),
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
