import 'package:flutter/material.dart'
    show
        AppBarTheme,
        BorderRadius,
        Brightness,
        Colors,
        InputDecorationTheme,
        OutlineInputBorder,
        TextTheme,
        ThemeData;

import '../app_style/app_font.dart';
import '../app_style/app_style.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
        brightness: Brightness.light,
        primarySwatch: AppColors.primary,
        fontFamily: FontConstants.fontFamily,
        scaffoldBackgroundColor: Colors.white,
        primaryColorDark: AppColors.primary.shade700,
        primaryColorLight: AppColors.primary.shade100,
        textTheme: TextTheme(
          button: getMediumStyle(color: Colors.black, fontSize: FontSize.s14),
          caption: getRegularStyle(color: Colors.black),
          headline1:
              getSemiBoldStyle(color: Colors.black, fontSize: FontSize.s20),
          headline2: getBoldStyle(color: Colors.black, fontSize: FontSize.s18),
          headline3:
              getRegularStyle(color: Colors.black, fontSize: FontSize.s16),
          subtitle1:
              getSemiBoldStyle(color: Colors.black, fontSize: FontSize.s16),
          subtitle2:
              getRegularStyle(color: Colors.black, fontSize: FontSize.s14),
          bodyText1:
              getSemiBoldStyle(color: Colors.black, fontSize: FontSize.s16),
          bodyText2:
              getRegularStyle(color: Colors.black, fontSize: FontSize.s14),
        ),
        inputDecorationTheme: InputDecorationTheme(
          isDense: true,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
            8,
          )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
            8,
          )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
            8,
          )),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
            8,
          )),
          fillColor: AppColors.primaryColor.withOpacity(.1),
        ),
        appBarTheme: AppBarTheme(
            elevation: 0,
            titleTextStyle:
                getSemiBoldStyle(color: Colors.white, fontSize: FontSize.s20)));
  }
}
