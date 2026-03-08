import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';

class CustomTheme {
  static ThemeData get appTheme {
    return ThemeData(
      brightness: Brightness.light,
      // dividerColor: Colors.transparent,
      cardTheme: const CardTheme(shadowColor: brandColor),
      // cardTheme: const CardThemeData(shadowColor: brandColor),
      listTileTheme: const ListTileThemeData(
          visualDensity: VisualDensity(vertical: -4, horizontal: -4),
          dense: true,
          iconColor: black,
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          style: ListTileStyle.list,
          titleTextStyle: TextStyle(
            fontSize: 12,
            color: brandColor,
          )),
      fontFamily: "Poppins",

      scaffoldBackgroundColor: bgColor,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: bgWhite,
        actionsIconTheme: IconThemeData(color: black),
        elevation: 0,
        iconTheme: IconThemeData(color: brandColor),
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: black,
        ),
        foregroundColor: black,
      ),
      textTheme: const TextTheme(
        headlineSmall: TextStyle(
          color: black,
          fontSize: 12,
          fontFamily: "Poppins",
        ),
        headlineMedium: TextStyle(
          color: black,
          fontSize: 14,
          fontFamily: "Poppins",
        ),
        headlineLarge: TextStyle(
          color: black,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: "Poppins",
        ),
        displayMedium: TextStyle(color: black, fontSize: 14, fontFamily: "Poppins"),
        bodySmall: TextStyle(color: black, fontSize: 10, fontFamily: "Poppins"),
        bodyMedium: TextStyle(color: black, fontSize: 12, fontFamily: "Poppins"),
        bodyLarge: TextStyle(color: black, fontSize: 14, fontFamily: "Poppins"),
        labelLarge: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        side: const BorderSide(color: Color(0xffCACDD5)),
        checkColor: MaterialStateProperty.all(bgWhite),
        fillColor: MaterialStateProperty.all(Colors.transparent),
      ),
      tabBarTheme: const TabBarTheme(
        labelColor: black,
        indicator: BoxDecoration(border: Border(bottom: BorderSide(color: black, width: 2))),
      ),
      // tabBarTheme: const TabBarThemeData(
      //   labelColor: black,
      //   indicator: BoxDecoration(border: Border(bottom: BorderSide(color: black, width: 2))),
      // ),
      dividerTheme: DividerThemeData(color: black.withOpacity(0.1)),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          color: black.withOpacity(0.3),
          fontSize: 14,
          fontFamily: "Poppins",
        ),
        errorStyle: const TextStyle(color: Colors.red, fontSize: 10),
        isDense: true,
        fillColor: bgWhite,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 12,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xffBFDBFE), width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: bgWhite),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: bgWhite),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xffBFDBFE), width: 2),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          backgroundColor: brandColor,
          disabledForegroundColor: bgWhite,
          disabledBackgroundColor: brandColor,
          foregroundColor: bgWhite,
          textStyle: const TextTheme().bodyLarge,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 2),
          foregroundColor: brandColor,
          backgroundColor: bgWhite,
          textStyle: const TextTheme().bodySmall,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
          side: const BorderSide(color: brandColor),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero), visualDensity: const VisualDensity(horizontal: -4, vertical: -4)),
      ),
      dialogTheme: const DialogTheme(backgroundColor: bgWhite),
      // dialogTheme: const DialogThemeData(backgroundColor: bgWhite),
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      colorScheme: const ColorScheme.light(
        brightness: Brightness.light,
        surfaceTint: Colors.white,
        secondary: bgWhite,
        onSecondary: brandColor,
        error: errorColor,
        onError: brandColor,
        surface: bgWhite,
        primary: brandColor,
        onPrimary: bgWhite,
        onSurface: brandColor,
      ),
    );
  }
}
