import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'core/providers/theme_provider.dart';
import 'core/theme/themes_data.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, child) {
        return Consumer<ThemeProvider>(
          builder: (context, value, _) {
            return ScreenUtilInit(
              designSize: const Size(1920, 1080),
              builder: (context, child) => MaterialApp(
                theme: value.currentTheme == ThemeMode.light
                    ? ThemesData.lightTheme
                    : ThemesData.darkTheme,
                debugShowCheckedModeBanner: false,
                home: const HomeScreen(),
              ),
            );
          },
        );
      },
    );
  }
}
