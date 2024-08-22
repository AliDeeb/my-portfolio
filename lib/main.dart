import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'core/providers/theme_provider.dart';
import 'core/theme/themes_data.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  Size designSize = const Size(1920, 1080);
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, child) {
        return Consumer<ThemeProvider>(
          builder: (context, value, _) {
            return ScreenUtilInit(
              designSize: designSize,
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

  @override
  void didChangeMetrics() {
    final windowSize = MediaQuery.of(context).size;
    // print(windowSize);
    if (windowSize.width < 800) {
      setState(() {
        designSize = const Size(1920, 1080);
      });
    } else {
      setState(() {
        designSize = const Size(1920, 1080);
      });
    }
    super.didChangeMetrics();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }
}
