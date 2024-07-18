import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/theme/themes_data.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: (context, child) => MaterialApp(
        theme: ThemesData.lightTheme,
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}
