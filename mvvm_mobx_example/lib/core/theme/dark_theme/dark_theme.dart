import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final ThemeData myDarkTheme = ThemeData(
  primarySwatch: const MaterialColor(4280361249, {
    50: Color(0xfff2f2f2),
    100: Color(0xffe6e6e6),
    200: Color(0xffcccccc),
    300: Color(0xffb3b3b3),
    400: Color(0xff999999),
    500: Color(0xff808080),
    600: Color(0xff666666),
    700: Color(0xff4d4d4d),
    800: Color(0xff333333),
    900: Color(0xff191919)
  }),
  textTheme: const TextTheme(
    bodyLarge:TextStyle(fontSize: 40)
  ),
  appBarTheme:  AppBarTheme(
      titleTextStyle: TextStyle(
    color: Colors.white,
    fontSize: 25.sp,
    fontWeight: FontWeight.bold,
  )),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(vertical: 20),
    elevation: 10.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30), // <-- Radius
    ),
  )),
  
  brightness: Brightness.dark,
  primaryColor: const Color(0xff212121),
  primaryColorLight: const Color(0xff9e9e9e),
  primaryColorDark: const Color(0xff000000),
  canvasColor: const Color(0xff303030),
  scaffoldBackgroundColor: const Color(0xff303030),
  cardColor: const Color(0xff424242),
  dividerColor: const Color(0x1fffffff),
  highlightColor: const Color(0x40cccccc),
  splashColor: const Color(0x40cccccc),
  unselectedWidgetColor: const Color(0xb3ffffff),
  disabledColor: const Color(0x62ffffff),
  secondaryHeaderColor: const Color(0xff616161),
  dialogBackgroundColor: const Color(0xff424242),
  indicatorColor: const Color(0xff64ffda),
  hintColor: const Color(0x80ffffff),
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    minWidth: 88,
    height: 36,
    padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    alignedDropdown: false,
    buttonColor: Color(0xff3d8f41),
    disabledColor: Color(0x61ffffff),
    highlightColor: Color(0x29ffffff),
    splashColor: Color(0x1fffffff),
    focusColor: Color(0x1fffffff),
    hoverColor: Color(0x0affffff),
    colorScheme: ColorScheme(
      primary: Color(0xff4cb150),
      secondary: Color(0xff64ffda),
      surface: Color(0xff424242),
      background: Color(0xff616161),
      error: Color(0xffd32f2f),
      onPrimary: Color(0xffffffff),
      onSecondary: Color(0xff000000),
      onSurface: Color(0xffffffff),
      onBackground: Color(0xffffffff),
      onError: Color(0xff000000),
      brightness: Brightness.dark,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    helperStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    hintStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorMaxLines: null,
    isDense: false,
    contentPadding: EdgeInsets.only(top: 12, bottom: 12, left: 0, right: 0),
    isCollapsed: false,
    prefixStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    suffixStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    counterStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    filled: false,
    fillColor: Color(0x00000000),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
  ),
  iconTheme: const IconThemeData(
    color: Color(0xffffffff),
    opacity: 1,
    size: 24,
  ),
  primaryIconTheme: const IconThemeData(
    color: Color(0xffffffff),
    opacity: 1,
    size: 24,
  ),
  sliderTheme: const SliderThemeData(
    activeTrackColor: null,
    inactiveTrackColor: null,
    disabledActiveTrackColor: null,
    disabledInactiveTrackColor: null,
    activeTickMarkColor: null,
    inactiveTickMarkColor: null,
    disabledActiveTickMarkColor: null,
    disabledInactiveTickMarkColor: null,
    thumbColor: null,
    disabledThumbColor: null,
    thumbShape: null,
    overlayColor: null,
    valueIndicatorColor: null,
    valueIndicatorShape: null,
    showValueIndicator: null,
    valueIndicatorTextStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: Color(0xffffffff),
    unselectedLabelColor: Color(0xb2ffffff),
  ),
  chipTheme: const ChipThemeData(
    backgroundColor: Color(0x1fffffff),
    brightness: Brightness.dark,
    deleteIconColor: Color(0xdeffffff),
    disabledColor: Color(0x0cffffff),
    labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
    labelStyle: TextStyle(
      color: Color(0xdeffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
    secondaryLabelStyle: TextStyle(
      color: Color(0x3dffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    secondarySelectedColor: Color(0x3d212121),
    selectedColor: Color(0x3dffffff),
    shape: StadiumBorder(
        side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    )),
  ),
  dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
    side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    ),
    borderRadius: BorderRadius.all(Radius.circular(0.0)),
  )),
);
