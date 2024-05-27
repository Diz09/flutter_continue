// ignore_for_file: duplicate_ignore, unnecessary_import

import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),        
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        side: BorderSide(
          color: appTheme.blueGray100,
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.blueGray100.withOpacity(0.85),
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        // bodyLarge: TextStyle(
        //   color: appTheme.blueGray400,
        //   fontSize: 19.fSize,
        //   fontFamily: 'Poppins',
        //   fontWeight: FontWeight.w300,
        // ),
        bodyLarge: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 17.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 13.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray400,
          fontSize: 8.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 34.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 30.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 29.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 25.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 13.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 8.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 20.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 17.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFFDEAE78),
    primaryContainer: Color(0XFF292D32),
    secondaryContainer: Color(0XFF979797),
    errorContainer: Color(0XFF1977F3),
    onPrimary: Color(0XFF1C1B1F),
    onPrimaryContainer: Color(0X3F000000),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
// BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray400 => Color(0XFF868686);
  Color get blueGray40001 => Color(0XFF888888);
// DeepOrange
  Color get deepOrangeA700 => Color(0XFFE93500);
  // Color get deepOrangeA100 => Color(0XFFDEAE78);
// Gray
  Color get gray200 => Color(0XFFF1EDE7);
  Color get gray20001 => Color(0XFFF2EEE7);
  Color get gray50 => Color(0XFFFAFAFA);
  Color get gray700 => Color(0XFF5E5E5E);
  Color get gray70001 => Color(0XFF6B5048);
  Color get gray70002 => Color(0XFF5A5A5A);
  Color get gray800 => Color(0XFF424242);
// LightGreen
  Color get lightGreen800 => Color(0XFF3A9900);
// Orange
  Color get orange100 => Color(0XFFEFD7AE);
// Red
  Color get red500 => Color(0XFFEA4335);
// White
  Color get whiteA700=> Color(0XFFFFFFFF);
// Black
  // Color get black900 => Color(0XFF000000);
// Blue
  // Color get blueA400 => Color(0XFF1977F3);
}
