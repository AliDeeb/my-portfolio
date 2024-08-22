import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_constants.dart';
import '../../core/theme/custom_theme_colors.dart';
import '../../core/theme/text_theme_styles.dart';
import 'tool_widget.dart';

class ToolsWidget extends StatefulWidget {
  const ToolsWidget({super.key});

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
          style: TextThemeStyles.headlineSmall.copyWith(
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
        const ToolWidget(
          name: "VScode",
          asset: AppConstants.IMG_VSCODE_LOGO,
          progressColor: Colors.blue,
          progress: 90,
        ),
        const ToolWidget(
          name: "Android Studio",
          asset: AppConstants.IMG_ANDROID_LOGO,
          progressColor: Colors.orange,
          progress: 90,
        ),
        const ToolWidget(
          name: "Figma",
          asset: AppConstants.IMG_FIGMA_LOGO,
          progressColor: Colors.indigo,
          progress: 60,
        ),
        const ToolWidget(
          name: "Xcode",
          asset: AppConstants.IMG_XCODE_LOGO,
          progressColor: Colors.blue,
          progress: 90,
        ),
        const ToolWidget(
          name: "Git",
          asset: AppConstants.IMG_GIT_LOGO,
          progressColor: Colors.red,
          progress: 90,
        ),
        const ToolWidget(
          name: "GitHub",
          asset: AppConstants.IMG_GITHUB_LOGO,
          progressColor: Colors.black,
          progress: 90,
        ),
        const ToolWidget(
          name: "GitLab",
          asset: AppConstants.IMG_GITLAB_LOGO,
          progressColor: Colors.red,
          progress: 90,
        ),
        const ToolWidget(
          name: "Devops",
          asset: AppConstants.IMG_DEVOPS_LOGO,
          progressColor: Colors.blue,
          progress: 90,
        ),
      ],
    );
  }
}
