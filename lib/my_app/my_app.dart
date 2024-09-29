import 'package:flutter/material.dart';
import 'package:quran_app_c12_offline/config/theme/my_theme.dart';
import 'package:quran_app_c12_offline/presentation/home/home_screen.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/hadith_tab/hadith_details/hadith_details.dart';
import 'package:quran_app_c12_offline/presentation/home/tabs/quran_tab/quran_details/quran_details_screen.dart';
import 'package:quran_app_c12_offline/presentation/splash/splash_screen.dart';

import '../core/utils/routes_managet.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.hadithDetailsRoute: (_) => HadithDetails(),
        RoutesManager.homeRoute: (_) => HomeScreen(),
        RoutesManager.splashRoute: (_) => SplashScreen(),
        RoutesManager.quranDetailsRoute: (_) => QuranDetailsScreen(),
      },
      initialRoute: RoutesManager.splashRoute,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
