import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/custom_theme_colors.dart';
import 'dart:js' as js;

import '../../core/theme/text_theme_styles.dart';

class ApplicationWidget extends StatelessWidget {
  const ApplicationWidget({
    super.key,
    required this.applicationName,
    required this.asset,
    required this.googlePlayLink,
    required this.appleStoreLink,
  });

  final String applicationName;
  final String asset;
  final String? googlePlayLink;
  final String? appleStoreLink;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).extension<CustomThemeColors>()?.textColor;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          applicationName,
          style: TextThemeStyles.titleLarge.copyWith(
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (googlePlayLink != null)
              InkWell(
                borderRadius: BorderRadius.circular(10.r),
                onTap: () {
                  js.context.callMethod('open', [googlePlayLink]);
                },
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.r),
                        child: SizedBox(
                          width: 100.w,
                          height: 100.w,
                          child: Image.asset(asset),
                        ),
                      ),
                      10.verticalSpace,
                      Text(
                        "$applicationName - Google play",
                        style: TextThemeStyles.titleSmall.copyWith(
                          fontWeight: FontWeight.w600,
                          color: color,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            if (appleStoreLink != null) ...[
              50.horizontalSpace,
              InkWell(
                borderRadius: BorderRadius.circular(10.r),
                onTap: () {
                  js.context.callMethod('open', [appleStoreLink]);
                },
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.r),
                        child: SizedBox(
                          width: 100.w,
                          height: 100.w,
                          child: Image.asset(asset),
                        ),
                      ),
                      10.verticalSpace,
                      Text(
                        "$applicationName - Apple Store",
                        style: TextThemeStyles.titleSmall.copyWith(
                          fontWeight: FontWeight.w600,
                          color: color,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }
}
