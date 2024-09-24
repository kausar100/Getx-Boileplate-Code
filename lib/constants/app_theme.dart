import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/constants/colors.dart';
import 'package:flutter_getx_demo/constants/font_family.dart';
import 'package:flutter_getx_demo/ui/auth/register/register.dart';

final ThemeData themeData = ThemeData.light().copyWith(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  primaryColor: AppColors.orange[500],
  colorScheme: ColorScheme.fromSwatch(
          primarySwatch:
              MaterialColor(AppColors.orange[500]!.value, AppColors.orange))
      .copyWith(
    secondary: AppColors.orange[500],
  ),
  appBarTheme:  const AppBarTheme(
    foregroundColor: Colors.white
  ),
  textTheme: TextTheme(
    headline2: TextStyle(
      fontSize: 24.0,
      color: Colors.black,
      fontFamily: FontFamily.productSans,
      fontWeight: FontWeight.w700,
    ),
    headline5: TextStyle(
      fontSize: 18.0,
      fontFamily: FontFamily.productSans,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    headline6: TextStyle(
      fontSize: 16.0,
      fontFamily: FontFamily.productSans,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    bodyText1: TextStyle(
      fontSize: 16.0,
      fontFamily: FontFamily.productSans,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    bodyText2: TextStyle(
      fontSize: 14.0,
      color: Colors.black,
      fontFamily: FontFamily.productSans,
      fontWeight: FontWeight.w400,
    ),
  ),
);

final ThemeData themeDataDark = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black26,
    primaryColor: AppColors.orange[500],
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: AppColors.orange[500]),
    checkboxTheme: const CheckboxThemeData(
      checkColor: MaterialStatePropertyAll(Colors.black),
      fillColor:  MaterialStatePropertyAll(Colors.white)
    ),
    appBarTheme:  const AppBarTheme(
        foregroundColor: Colors.white
    ),
    textTheme: TextTheme(
      headline2: TextStyle(
        fontSize: 24.0,
        fontFamily: FontFamily.productSans,
        fontWeight: FontWeight.w700,
      ),
      headline5: TextStyle(
        fontSize: 18.0,
        fontFamily: FontFamily.productSans,
        fontWeight: FontWeight.w600,
      ),
      headline6: TextStyle(
        fontSize: 16.0,
        fontFamily: FontFamily.productSans,
        fontWeight: FontWeight.w600,
      ),
      bodyText1: TextStyle(
        fontSize: 16.0,
        fontFamily: FontFamily.productSans,
        fontWeight: FontWeight.w400,
      ),
      bodyText2: TextStyle(
        fontSize: 14.0,
        fontFamily: FontFamily.productSans,
        fontWeight: FontWeight.w400,
      ),
    ));
