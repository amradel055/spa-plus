import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextTheme {
  static TextStyle titleTextStyle = TextStyle(
    color: AppColors.primary,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static TextStyle contentTextStyle = TextStyle(
    color: AppColors.primary,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
}
