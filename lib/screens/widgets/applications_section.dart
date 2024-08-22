import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_constants.dart';
import '../../core/theme/custom_theme_colors.dart';
import '../../core/theme/text_theme_styles.dart';
import 'application_widget.dart';

class ApplicationsSection extends StatelessWidget {
  const ApplicationsSection({super.key, this.isMobile = false});
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).extension<CustomThemeColors>()?.textColor;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Applications",
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
        50.verticalSpace,
        ApplicationWidget(
          isMobile: isMobile,
          applicationName: "Bunyan Plus",
          asset: AppConstants.IMG_BUNYAN_PLUS_LOGO,
          googlePlayLink:
              "https://play.google.com/store/apps/details?id=com.osoustech.bunyan&hl=en",
          appleStoreLink:
              "https://apps.apple.com/tt/app/bunyan-plus/id6444227473",
        ),
        50.verticalSpace,
        ApplicationWidget(
          isMobile: isMobile,
          applicationName: "GK Auto",
          asset: AppConstants.IMG_GK_AUTO_LOGO,
          googlePlayLink:
              "https://play.google.com/store/apps/details?id=com.osoustech.gkAuto&hl=en",
          appleStoreLink:
              "https://apps.apple.com/nl/app/gk-auto-mg-iraq/id6467194629",
        ),
        50.verticalSpace,
        ApplicationWidget(
          isMobile: isMobile,
          applicationName: "Sadaf Inv",
          asset: AppConstants.IMG_SADAF_LOGO,
          googlePlayLink:
              "https://play.google.com/store/apps/details?id=com.hightech.sadaf_application&hl=en_US",
          appleStoreLink: null,
        ),
        50.verticalSpace,
        ApplicationWidget(
          isMobile: isMobile,
          applicationName: "Fashion Ecommerce",
          asset: AppConstants.IMG_FASHION_LOGO,
          googlePlayLink: null,
          appleStoreLink:
              "https://apps.apple.com/us/app/fashion-ecommerce/id6504250868",
        ),
      ],
    );
  }
}
