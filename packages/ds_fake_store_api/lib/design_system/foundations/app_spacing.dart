import 'package:flutter/material.dart';

/// Raw spacing values for the weather app design system.
/// Following Material Design's 4dp grid system.
/// These are foundation values that should not be used directly in widgets.
/// Instead, use SpacingTokens which provide semantic meaning.
class AppSpacing {
  AppSpacing._(); // Private constructor to prevent instantiation

  // Base Spacing Scale (4dp grid)
  static const double spacing0 = 0.0;
  static const double spacing4 = 4.0;
  static const double spacing8 = 8.0;
  static const double spacing12 = 12.0;
  static const double spacing16 = 16.0;
  static const double spacing20 = 20.0;
  static const double spacing24 = 24.0;
  static const double spacing28 = 28.0;
  static const double spacing32 = 32.0;
  static const double spacing40 = 40.0;
  static const double spacing48 = 48.0;
  static const double spacing56 = 56.0;
  static const double spacing64 = 64.0;
  static const double spacing72 = 72.0;
  static const double spacing80 = 80.0;

  // Semantic Aliases (for better understanding)
  static const double none = spacing0;
  static const double xxs = spacing4;
  static const double xs = spacing8;
  static const double sm = spacing12;
  static const double md = spacing16;
  static const double lg = spacing24;
  static const double xl = spacing32;
  static const double xxl = spacing40;
  static const double xxxl = spacing48;

  // Border Radius
  static const double radiusNone = 0.0;
  static const double radiusXs = 4.0;
  static const double radiusSm = 8.0;
  static const double radiusMd = 12.0;
  static const double radiusLg = 16.0;
  static const double radiusXl = 24.0;
  static const double radiusFull = 9999.0; // Circle/pill shape

  // Icon Sizes
  static const double iconSizeSmall = 20.0;
  static const double iconSizeNormal = 24.0;
  static const double iconSizeLarge = 32.0;

  // Common EdgeInsets (for reference, actual tokens in SpacingTokens)
  static const EdgeInsets paddingNone = EdgeInsets.zero;
  static const EdgeInsets paddingXs = EdgeInsets.all(spacing8);
  static const EdgeInsets paddingSm = EdgeInsets.all(spacing12);
  static const EdgeInsets paddingMd = EdgeInsets.all(spacing16);
  static const EdgeInsets paddingLg = EdgeInsets.all(spacing24);
  static const EdgeInsets paddingXl = EdgeInsets.all(spacing32);
}
