import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_constants.dart';
import '../../core/theme/custom_theme_colors.dart';
import 'theme_switcher.dart';
import 'tool_widget.dart';

class ToolsWidget extends StatefulWidget {
  const ToolsWidget({super.key});

  @override
  State<ToolsWidget> createState() => _ToolsWidgetState();
}

class _ToolsWidgetState extends State<ToolsWidget> {
  @override
  Widget build(BuildContext context) {
    final gradient =
        Theme.of(context).extension<CustomThemeColors>()?.toolsSectionGradient;
    final color = Theme.of(context).extension<CustomThemeColors>()?.textColor;
    return Container(
      height: 1.sh,
      decoration: BoxDecoration(gradient: gradient),
      child: Column(
        children: [
          const ThemeSwitcher(),
          50.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tools",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: color,
                      ),
                ),
                40.verticalSpace,
                const ToolWidget(
                  name: "Flutter",
                  asset: AppConstants.IMG_FLUTTER_LOGO,
                  progressColor: Colors.blue,
                  progress: 90,
                ),
                const ToolWidget(
                  name: "Dart",
                  asset: AppConstants.IMG_DART_LOGO,
                  progressColor: Color(0xFF136EB9),
                  progress: 90,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
