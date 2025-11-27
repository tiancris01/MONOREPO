import 'package:flutter/material.dart';

/// Raw typography values for the weather app design system.
/// These are foundation values following Material Design 3 type scale.
/// Font families will be configured using Google Fonts in TextTokens.
class AppTypography {
  AppTypography._(); // Private constructor to prevent instantiation

  // Font Families (names only - actual fonts loaded via google_fonts)
  static const String primaryFontFamily = 'Poppins'; // Modern, clean
  static const String secondaryFontFamily = 'Roboto'; // Material Design default
  static const String monoFontFamily = 'RobotoMono'; // For numerical data

  // Font Sizes - Material Design 3 Type Scale
  static const double fontSize11 = 11.0;
  static const double fontSize12 = 12.0;
  static const double fontSize14 = 14.0;
  static const double fontSize16 = 16.0;
  static const double fontSize18 = 18.0;
  static const double fontSize20 = 20.0;
  static const double fontSize22 = 22.0;
  static const double fontSize24 = 24.0;
  static const double fontSize28 = 28.0;
  static const double fontSize32 = 32.0;
  static const double fontSize36 = 36.0;
  static const double fontSize45 = 45.0;
  static const double fontSize57 = 57.0;
  static const double fontSize72 = 72.0; // For temperature display

  // Font Weights
  static const FontWeight fontWeightLight = FontWeight.w300;
  static const FontWeight fontWeightRegular = FontWeight.w400;
  static const FontWeight fontWeightMedium = FontWeight.w500;
  static const FontWeight fontWeightSemiBold = FontWeight.w600;
  static const FontWeight fontWeightBold = FontWeight.w700;

  // Line Heights (as multipliers)
  static const double lineHeightTight = 1.2;
  static const double lineHeightNormal = 1.5;
  static const double lineHeightRelaxed = 1.75;

  // Letter Spacing
  static const double letterSpacingTight = -0.5;
  static const double letterSpacingNormal = 0.0;
  static const double letterSpacingWide = 0.5;
  static const double letterSpacingExtraWide = 1.0;
}
