import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/custom_theme_colors.dart';
import '../../core/theme/text_theme_styles.dart';
import 'work_experience_widget.dart';

class WorkExperiencesWidget extends StatelessWidget {
  const WorkExperiencesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).extension<CustomThemeColors>()?.textColor;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Work Experience",
          style: TextThemeStyles.headlineMedium.copyWith(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        50.verticalSpace,
        WorkExperienceWidget(
          work: "Android / Flutter Developer",
          time: "Full Time",
          city: "Damascuse, Syria",
          company: "Osous Technology LLC",
          firstDate: DateTime(2021, 3, 1),
          endDate: null,
          additionalInfo: const [
            "Created applications for IOS and Android.",
            "Developed, implemented, and maintained mobile applications for clients with multi language.",
            "Integrated animations for the application UI and widgets.",
            "Analyzed user requirements, and translated client needs into application design.",
            "Provided continued maintenance and development of bug fixes and patch sets for existing applications.",
            "Integrating apps with third-party libraries.",
            "Creating an architectural skeleton for future projects.",
            "Explore the different tech stack for cross platform development.",
            "Used Google Maps API to quickly find location.",
            "Registered Broadcast receivers and responsible for implementing push notification using Firebase Cloud messaging.",
            "Used Bloc and Provider for state management.",
          ],
        ),
      ],
    );
  }
}
