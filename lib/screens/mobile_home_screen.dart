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

class MobileHomeScreen extends StatefulWidget {
  const MobileHomeScreen({super.key});

  @override
  State<MobileHomeScreen> createState() => _MobileHomeScreenState();
}

class _MobileHomeScreenState extends State<MobileHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final gradient =
        Theme.of(context).extension<CustomThemeColors>()?.toolsSectionGradient;
    bool isLight = Theme.brightnessOf(context) == Brightness.light;

    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        shape: const RoundedRectangleBorder(),
        surfaceTintColor: Colors.white,
        width: .5.sw,
        child: const PersonalInfoWidget(isMobile: true),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.horizontalSpace,
            Expanded(
              flex: 3,
              child: Container(
                // padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w),
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
                    25.verticalSpace,
                    const AboutMeWidget(isMobile: true),
                    50.verticalSpace,
                    const WorkExperiencesWidget(isMobile: true),
                    50.verticalSpace,
                    const EducationSection(isMobile: true),
                    50.verticalSpace,
                    const ApplicationsSection(isMobile: true),
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
                    const ThemeSwitcher(isMobile: true),
                    50.verticalSpace,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const ToolsWidget(isMobile: true),
                          50.verticalSpace,
                          const ProgrammingLanguages(isMobile: true),
                          50.verticalSpace,
                          const ProfessionalSkillsWidget(isMobile: true),
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
