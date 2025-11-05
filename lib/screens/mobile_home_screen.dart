import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../core/constants/tabs_enum.dart';
import '../core/providers/tabs_provider.dart';
import 'widgets/about_me_widget.dart';
import 'widgets/applications_section.dart';
import 'widgets/education_section.dart';
import 'widgets/personal_info_widget.dart';
import 'widgets/professional_skills_widget.dart';
import 'widgets/programming_languages_widget.dart';
import 'widgets/tabs_widget.dart';
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
    // final gradient =
    //     Theme.of(context).extension<CustomThemeColors>()?.toolsSectionGradient;
    bool isLight = Theme.brightnessOf(context) == Brightness.light;
    final currentTab = context.watch<TabsProvider>().currentTab;

    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.only(bottom: 100.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                10.horizontalSpace,
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: isLight
                              ? Colors.grey.shade100
                              : Colors.grey.shade900,
                          border:
                              Border.all(color: Colors.blueGrey, width: 0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const PersonalInfoWidget(isMobile: true),
                      ),
                      20.verticalSpace,
                      Container(
                        decoration: BoxDecoration(
                          color: isLight
                              ? Colors.grey.shade100
                              : Colors.grey.shade900,
                          border:
                              Border.all(color: Colors.blueGrey, width: 0.1),
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
                            if (currentTab == TabsEnum.about) ...[
                              const AboutMeWidget(isMobile: true),
                              50.verticalSpace,
                              const EducationSection(isMobile: true),
                              50.verticalSpace,
                              const WorkExperiencesWidget(isMobile: true),
                              50.verticalSpace,
                            ],
                            if (currentTab == TabsEnum.portfolio) ...[
                              const ApplicationsSection(isMobile: true),
                            ],
                            if (currentTab == TabsEnum.skills) ...[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const ToolsWidget(isMobile: true),
                                  50.verticalSpace,
                                  const ProgrammingLanguages(isMobile: true),
                                  50.verticalSpace,
                                  const ProfessionalSkillsWidget(
                                      isMobile: true),
                                ],
                              ),
                            ],
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                10.horizontalSpace,
              ],
            ),
          ),

          // tab widget.
          const PositionedDirectional(
            bottom: 0,
            start: 0,
            end: 0,
            child: TabsWidget(isMobile: true),
          ),
        ],
      ),
    );
  }
}
