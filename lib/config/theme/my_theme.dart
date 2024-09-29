import 'package:flutter/material.dart';
import 'package:quran_app_c12_offline/core/utils/colors_manager.dart';

class MyTheme {
  static final ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: ColorsManager.goldColor,
      ),
      primaryColor: ColorsManager.goldColor,
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
            fontSize: 22, fontWeight: FontWeight.w700, color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      cardTheme: CardTheme(
        color: Colors.white,
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.all(8),
      ),
      dividerColor: ColorsManager.goldColor,
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(
            size: 36,
          ),
          unselectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          elevation: 20),
      textTheme: const TextTheme(
          titleSmall: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
          bodySmall: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black)));

  static final ThemeData darkTheme = ThemeData(
      primaryColor: const Color(0xFFFACC1D),
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
            fontSize: 22, fontWeight: FontWeight.w700, color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(
            size: 36,
          ),
          unselectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          elevation: 20));
}
