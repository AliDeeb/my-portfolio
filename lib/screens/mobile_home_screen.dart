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
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w),
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
