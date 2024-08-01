import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/custom_theme_colors.dart';
import 'theme_switcher.dart';

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
    return Container(
      height: 1.sh,
      decoration: BoxDecoration(gradient: gradient),
      child: const Column(
        children: [
          ThemeSwitcher(),
        ],
      ),
    );
  }
}
