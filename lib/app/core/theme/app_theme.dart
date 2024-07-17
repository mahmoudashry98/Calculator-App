import 'package:com.mahersh.calculatorapp/app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: kScaffoldBackgroundColor,
    secondaryHeaderColor: kMainTextColor,
    primaryColor: kMainColor,
    primaryColorDark: kMainColorDark,
    primaryColorLight: kMainColorLight,
    dividerColor: const Color(0xFFD4D4D4),
    cardColor: kCardBackgroundColor,
    hintColor: kLightTextColor,
    indicatorColor: kMainColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 16,
          color: kMainTextColor,
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(
        //fontFamily: CommonVariables.settings.read(FONT_FAMILY),
        fontSize: 13,
        color: Color(0xffa0a0a0),
      ),
      labelStyle: TextStyle(
        //fontFamily: CommonVariables.settings.read(FONT_FAMILY),
        fontSize: 14,
        fontWeight: FontWeight.bold,
        //   color: const Color(0xff000000),
      ),
      alignLabelWithHint: true,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: kMainColor,
        ),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffa0a0a0),
        ),
      ),
    ),
    tabBarTheme: const TabBarTheme(
        labelStyle: TextStyle(
            fontSize: 16, color: kMainTextColor, fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(
          fontSize: 16,
          color: kMainTextColor,
        )),
    appBarTheme: const AppBarTheme(
        backgroundColor: kScaffoldBackgroundColor,
        elevation: 1,
        shadowColor: kMainColor,
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        toolbarTextStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.3,
          color: kMainTextColor,
          fontFamily: 'Cairo',
        ),
        iconTheme: IconThemeData(color: kMainTextColor),
        actionsIconTheme: IconThemeData(
          color: kMainColor,
        )),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: kScaffoldDarkBackgroundColor,
      elevation: 1,
    ),
    iconTheme: const IconThemeData(color: kMainTextColor),
    primaryIconTheme: const IconThemeData(color: kMainTextColor),
    colorScheme: const ColorScheme.light(primary: kMainColor),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: kMainColor),
    sliderTheme: const SliderThemeData(
      trackHeight: 2,
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
    ));
final ThemeData appDarkTheme = ThemeData(
  scaffoldBackgroundColor: kScaffoldDarkBackgroundColor,
  secondaryHeaderColor: kMainTextColor,
  primaryColor: kMainColor,
  primaryColorDark: kMainColorDark,
  primaryColorLight: kMainColorLight,
  cardColor: kCardBackgroundDarkColor,
  dividerColor: const Color(0xFFD4D4D4),
  textButtonTheme: TextButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: const TextStyle(color: kWhiteColor),
    ),
  ),
  indicatorColor: kMainColor,
  inputDecorationTheme: const InputDecorationTheme(
    hintStyle: TextStyle(
      // fontFamily: CommonVariables.settings.read(FONT_FAMILY),
      fontSize: 13,
    ),
    labelStyle: TextStyle(
      // fontFamily: CommonVariables.settings.read(FONT_FAMILY),
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Color(0xffffffff),
    ),
    alignLabelWithHint: true,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffa0a0a0),
      ),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffa0a0a0),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: const TextStyle(
        fontSize: 16,
        color: kWhiteColor,
      ),
    ),
  ),
  tabBarTheme: const TabBarTheme(
      labelStyle: TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
      unselectedLabelStyle: TextStyle(
        fontSize: 16,
        color: Colors.white,
      )),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: kWhiteColor,
    elevation: 1,
  ),
  appBarTheme: const AppBarTheme(
      backgroundColor: kScaffoldDarkBackgroundColor,
      elevation: 0.0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      toolbarTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18.3,
        color: Colors.white,
        fontFamily: 'Cairo',
      ),
      iconTheme: IconThemeData(color: Colors.white),
      actionsIconTheme: IconThemeData(color: kWhiteColor)),
  colorScheme: const ColorScheme.dark(primary: kMainColor),
  iconTheme: const IconThemeData(color: Colors.white),
  primaryIconTheme: const IconThemeData(color: Colors.white),
  textSelectionTheme: const TextSelectionThemeData(cursorColor: kMainColor),
  sliderTheme: const SliderThemeData(
    trackHeight: 2,
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
  ),
);
