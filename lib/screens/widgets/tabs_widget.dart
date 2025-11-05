import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/constants/tabs_enum.dart';
import '../../core/providers/tabs_provider.dart';
import '../../core/theme/text_theme_styles.dart';

class TabsWidget extends StatefulWidget {
  const TabsWidget({super.key, this.isMobile = false});

  final bool isMobile;

  @override
  State<TabsWidget> createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> {
  @override
  Widget build(BuildContext context) {
    final tabsProvider = context.watch<TabsProvider>();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        border: const Border(
          bottom: BorderSide(color: Colors.blueGrey, width: 0.1),
          left: BorderSide(color: Colors.blueGrey, width: 0.1),
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 50.w,
        children: List.generate(
          TabsEnum.values.length,
          (index) {
            return InkWell(
              onTap: () {
                tabsProvider.currentTab = TabsEnum.values[index];
              },
              child: Text(
                TabsEnum.values[index].value,
                style: (widget.isMobile
                        ? TextThemeStyles.titleSmall
                        : TextThemeStyles.titleMedium)
                    .copyWith(
                  decorationColor:
                      tabsProvider.currentTab == TabsEnum.values[index]
                          ? Colors.blue
                          : null,
                  decoration: tabsProvider.currentTab == TabsEnum.values[index]
                      ? TextDecoration.underline
                      : null,
                  fontWeight: tabsProvider.currentTab == TabsEnum.values[index]
                      ? FontWeight.bold
                      : null,
                  color: tabsProvider.currentTab == TabsEnum.values[index]
                      ? Colors.blue
                      : null,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
