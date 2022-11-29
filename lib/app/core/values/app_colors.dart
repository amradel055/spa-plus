// ignore_for_file: constant_identifier_names

import 'package:easy_hotel/app/core/themes/app_theme.dart';
import 'package:flutter/material.dart';

abstract class AppColors {
  static get primary => navy;
  static const navy = Color(0xff17a2b8);
  static const blue = Color(0xff007bff);
  static const greenNavy = Color(0xff00bf96);
  static const whitePrimary = Color(0xffd3f1eb);
  static const whiteBlue = Color(0xffc3e6ec);
  static const white = Color(0xfff8f9fa);
  static const black = Color(0xff6c757d);
  static const grey = Color(0xffababab);

  static Color get fieldBorderColor => grey;
  static Color get backgroundColor => white;
  static Color get textFieldLabelColor => black;
  static Color get textFieldHintColor => grey;
  static Color get text => AppTheme.isDark ? white : black;

  static Map<int, Color> getMaterialColor(Color color){
    return {
      50:Color.fromRGBO(color.red,color.green,color.blue, .1),
      100:Color.fromRGBO(color.red,color.green,color.blue, .2),
      200:Color.fromRGBO(color.red,color.green,color.blue, .3),
      300:Color.fromRGBO(color.red,color.green,color.blue, .4),
      400:Color.fromRGBO(color.red,color.green,color.blue, .5),
      500:Color.fromRGBO(color.red,color.green,color.blue, .6),
      600:Color.fromRGBO(color.red,color.green,color.blue, .7),
      700:Color.fromRGBO(color.red,color.green,color.blue, .8),
      800:Color.fromRGBO(color.red,color.green,color.blue, .9),
      900:Color.fromRGBO(color.red,color.green,color.blue, 1),
    };
  }

  static RadialGradient get radialGradient{
    return const RadialGradient(
      colors: [
        Colors.white,
        whiteBlue
      ],
      // radius: 0.5
    );
  }

}

