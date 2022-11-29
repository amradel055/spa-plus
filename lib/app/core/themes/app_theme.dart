

import 'package:easy_hotel/app/core/utils/app_storage.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AppTheme {
  static ThemeData light = lightTheme;
  static ThemeData dark = darkTheme;

  static get appFontFamily => "Cairo";
  static bool get isDark => Get.isDarkMode;

  ThemeMode getThemeMode() {
    return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

  bool isSavedDarkMode() {
    return AppStorage.read(AppStorage.DARK_MODE_KEY) ?? false;
  }

  Future saveThemeMode(bool isDarkMode) => AppStorage.write(AppStorage.DARK_MODE_KEY, isDarkMode);

  Future changeThemeMode([bool? isDarkMode]) async{
    await saveThemeMode(isDarkMode??!isSavedDarkMode());
    Get.changeThemeMode(!(isDarkMode?? isSavedDarkMode()) ? ThemeMode.light : ThemeMode.dark);
  }
}

final ThemeData darkTheme = ThemeData(
  fontFamily: AppTheme.appFontFamily,
  primaryColorDark: AppColors.primary,
  primaryColor: AppColors.primary,
  brightness: Brightness.dark,
  cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      shadowColor: Colors.black12,
      elevation: 5,
      // color: AppColors.BLUE_800
    ),
  tabBarTheme: TabBarTheme(
    labelColor: AppColors.primary,
    unselectedLabelColor: Colors.white,
    unselectedLabelStyle: const TextStyle(color: Colors.white),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          primary: AppColors.primary,
          onPrimary: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
      )
  ),
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  cardColor: Colors.grey.shade900,
  appBarTheme: const AppBarTheme(
    foregroundColor: Colors.white,
    elevation: 8,
    backgroundColor: Colors.black,
    shadowColor: Colors.black26,
  ),
  focusColor: AppColors.primary,
  textSelectionTheme: ThemeData.dark().textSelectionTheme.copyWith(cursorColor: AppColors.primary),
  textTheme: ThemeData.dark().textTheme,
  colorScheme: const ColorScheme.dark().copyWith(primary: AppColors.primary),
);

final ThemeData lightTheme = ThemeData(
  fontFamily: AppTheme.appFontFamily,
  primaryColorDark: AppColors.primary,
  primaryColor: AppColors.primary,
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  shadowColor: Colors.black.withOpacity(.05),
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    shadowColor: Colors.black12,
    elevation: 5
  ),
  tabBarTheme: TabBarTheme(
    labelColor: AppColors.primary,
    unselectedLabelColor: Colors.black,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: AppColors.primary,
      onPrimary: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
    )
  ),
  appBarTheme: const AppBarTheme(
    foregroundColor: Colors.black,
    elevation: 8,
    backgroundColor: Colors.white,
    shadowColor: Colors.black12,
    systemOverlayStyle: SystemUiOverlayStyle.dark
  ),
  focusColor: AppColors.primary,
  textSelectionTheme: TextSelectionThemeData(cursorColor: AppColors.primary), colorScheme: const ColorScheme.light().copyWith(primary: AppColors.primary).copyWith(background: Colors.white)
);
