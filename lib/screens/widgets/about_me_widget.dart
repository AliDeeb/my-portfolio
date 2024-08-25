import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/custom_theme_colors.dart';
import '../../core/theme/text_theme_styles.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key, this.isMobile = false});
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).extension<CustomThemeColors>()?.textColor;
    const aboutMe = '''
I am an experienced and dedicated Flutter Developer with over a decade of professional experience in the tech industry, specializing in mobile application development.My technical expertise spans a comprehensive array of technologies including Android, Kotlin, Java, and cross-platform frameworks such as Flutter and Kotlin Native.Driven by a passion for developing innovative mobile applications, I thrive in environments where I can transform complex challenges into intuitive, scalable, and reliable products.
''';
// My career is also marked by a commitment to continuous learning and adaptation, integrating the latest technologies into my work to stay at the forefront of industry trends. Whether working on sports, media, or health applications, I bring a focused approach to quality and an enthusiasm for seeing projects from conception to successful deployment.

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About me",
          style: isMobile
              ? TextThemeStyles.titleLarge.copyWith(
                  fontWeight: FontWeight.bold,
                  color: color,
                )
              : TextThemeStyles.headlineMedium.copyWith(
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
        ),
        25.verticalSpace,
        Text(
          aboutMe,
          style: isMobile
              ? TextThemeStyles.labelLarge.copyWith(
                  fontSize: 10.sp,
                  color: color,
                  fontWeight: FontWeight.w600,
                )
              : TextThemeStyles.bodyLarge.copyWith(
                  color: color,
                  fontWeight: FontWeight.w600,
                ),
        ),
      ],
    );
  }
}
