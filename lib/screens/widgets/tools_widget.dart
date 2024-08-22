import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_constants.dart';
import '../../core/theme/custom_theme_colors.dart';
import '../../core/theme/text_theme_styles.dart';
import 'tool_widget.dart';

class ToolsWidget extends StatefulWidget {
  const ToolsWidget({super.key, this.isMobile = false});
  final bool isMobile;

  @override
  State<ToolsWidget> createState() => _ToolsWidgetState();
}

class _ToolsWidgetState extends State<ToolsWidget> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).extension<CustomThemeColors>()?.textColor;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tools",
          style: widget.isMobile
              ? TextThemeStyles.titleSmall.copyWith(
                  fontWeight: FontWeight.bold,
                  color: color,
                )
              : TextThemeStyles.headlineSmall.copyWith(
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
        ),
        40.verticalSpace,
        // const ToolWidget(
        //   name: "Flutter",
        //   asset: AppConstants.IMG_FLUTTER_LOGO,
        //   progressColor: Colors.blue,
        //   progress: 95,
        // ),
        // const ToolWidget(
        //   name: "Dart",
        //   asset: AppConstants.IMG_DART_LOGO,
        //   progressColor: Color(0xFF136EB9),
        //   progress: 95,
        // ),
        ToolWidget(
          isMobile: widget.isMobile,
          name: "VScode",
          asset: AppConstants.IMG_VSCODE_LOGO,
          progressColor: Colors.blue,
          progress: 90,
        ),
        ToolWidget(
          isMobile: widget.isMobile,
          name: "Android Studio",
          asset: AppConstants.IMG_ANDROID_LOGO,
          progressColor: Colors.orange,
          progress: 90,
        ),
        ToolWidget(
          isMobile: widget.isMobile,
          name: "Figma",
          asset: AppConstants.IMG_FIGMA_LOGO,
          progressColor: Colors.indigo,
          progress: 60,
        ),
        ToolWidget(
          isMobile: widget.isMobile,
          name: "Xcode",
          asset: AppConstants.IMG_XCODE_LOGO,
          progressColor: Colors.blue,
          progress: 90,
        ),
        ToolWidget(
          isMobile: widget.isMobile,
          name: "Git",
          asset: AppConstants.IMG_GIT_LOGO,
          progressColor: Colors.red,
          progress: 90,
        ),
        ToolWidget(
          isMobile: widget.isMobile,
          name: "GitHub",
          asset: AppConstants.IMG_GITHUB_LOGO,
          progressColor: Colors.black,
          progress: 90,
        ),
        ToolWidget(
          isMobile: widget.isMobile,
          name: "GitLab",
          asset: AppConstants.IMG_GITLAB_LOGO,
          progressColor: Colors.red,
          progress: 90,
        ),
        ToolWidget(
          isMobile: widget.isMobile,
          name: "Devops",
          asset: AppConstants.IMG_DEVOPS_LOGO,
          progressColor: Colors.blue,
          progress: 90,
        ),
      ],
    );
  }
}
