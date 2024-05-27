import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray400 => theme.textTheme.bodyLarge!.copyWith(
    color: appTheme.blueGray400,
    fontSize: 19.fSize,
    fontWeight: FontWeight.w300,
  );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
    fontSize: 15.fSize,
  );
  static get bodyMedium15_1 => theme.textTheme.bodyMedium!.copyWith(
    fontSize: 15.fSize,
  );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumBluegray40015 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 15.fSize,
      );
  static get bodyMediumInterWhiteA700 => 
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize
      );
  static get bodySmall9 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 9.fSize
      );
  static get bodySmallDeeporangeA700=> theme.textTheme.bodySmall!.copyWith(
        color: appTheme.deepOrangeA700,
        fontSize: 10.fSize,
      );
  static get bodySmallGray70001=> theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray70001,
        fontSize: 10.fSize,
      );
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300
      );
  static get bodySmallLight10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300
      );
  static get bodySmallLightgreen800=> theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lightGreen800,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 11.fSize,
      );
  static get bodySmallOnPrimaryContainer12 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 12.fSize,
      );
  static get bodySmallOnPrimaryContainer12_1 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 12.fSize,
      );
  static get bodySmallOnPrimaryContainerRegular => 
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get bodySmallOnPrimaryContainerRegular_1 => 
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRegular => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRegular8 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 8.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRegular9 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 9.fSize,
        fontWeight: FontWeight.w400,
      );
// Display text style
  static get displaySmallOnPrimaryContainer => 
      theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
// Headline text style
  static get headlineLargeRegular => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallSemiBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
// Label text style
  static get labelLargeDeeporangeA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepOrangeA700,
      );
  static get labelLargeDeeporangeA70012 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepOrangeA700,
        fontSize: 12.fSize,
      );
  static get labelLargeGray70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray70001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeGray7000112=> theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray70001,
        fontSize: 12.fSize,
      );
  static get labelLargeGray70001_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray70001,
      );
  static get labelLargeGray800 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w500
      );
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500
      );
  static get labelLargeMedium_1 => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500
      );
  static get labelLargePrimary_1 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelMediumGray70001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray70001,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumOnPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      ); 
  static get labelMediumWhiteA700 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelSmallWhiteA700 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
// Title text style
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOnPrimaryContainer_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleMediumPoppins =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontSize: 19.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsBluegray400 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blueGray400,
        fontSize: 16.fSize,
      );
  static get titleMediumPoppinsOnPrimaryContainer =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get titleMediumPoppinsOnPrimaryContainerSemiBold =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity (1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsPrimary =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get titleMediumPoppinsPrimary19 => theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 19.fSize,
      );
  static get titleMediumPoppinsSemiBold => theme.textTheme.titleMedium!.poppins.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600
      );
  static get titleSmall15 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
      );
  static get titleSmallInterWhiteA700 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimaryContainer15 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity (1),
        fontSize: 15.fSize,
      );
  static get titleSmallOnPrimaryContainerSemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity (1),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
      color: appTheme.whiteA700,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
}
