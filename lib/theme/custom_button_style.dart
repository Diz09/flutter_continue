import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // filled button style
  static ButtonStyle get fillBlueGrayTL5 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
      );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray70001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
      );
  static ButtonStyle get fillGrayTL5 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray70001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
      );
  static ButtonStyle get fillGrayTL51 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL10 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  // Outline button style
  static ButtonStyle get outlinePrimaryTL7 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
        elevation: WidgetStateProperty.all<double>(0),
      );
}
