import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'core/providers/theme_provider.dart';
import 'core/theme/themes_data.dart';
import 'screens/home_screen.dart';
import 'screens/mobile_home_screen.dart';

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
  bool isMobile = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final windowSize = MediaQuery.of(context).size;
      if (windowSize.width < 800) {
        isMobile = true;
        designSize = const Size(612, 812);
      } else {
        isMobile = false;
        designSize = const Size(1920, 1080);
      }
      setState(() {});
    });

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
                home: isMobile ? const MobileHomeScreen() : const HomeScreen(),
              ),
            );
          },
        );
      },
    );
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    Future.delayed(const Duration(milliseconds: 100), () {
      final windowSize = MediaQuery.of(context).size;
      if (windowSize.width < 800) {
        if (isMobile) return;
        setState(() {
          isMobile = true;
          designSize = const Size(612, 812);
        });
      } else {
        if (!isMobile) return;
        setState(() {
          isMobile = false;
          designSize = const Size(1920, 1080);
        });
      }
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }
}
