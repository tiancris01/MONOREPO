import 'package:flutter/material.dart';

/// Raw color values for the weather app design system.
/// These are foundation colors that should not be used directly in widgets.
/// Instead, use ColorTokens which provide semantic meaning.
class AppColors {
  AppColors._(); // Private constructor to prevent instantiation

  // Sky & Weather Colors
  static const skyBlue = Color(0xFF87CEEB);
  static const deepSkyBlue = Color(0xFF00BFFF);
  static const cloudGray = Color(0xFFE0E0E0);
  static const stormGray = Color(0xFF607D8B);
  static const sunYellow = Color(0xFFFFC107);
  static const sunsetOrange = Color(0xFFFF9800);
  static const nightBlue = Color(0xFF1A237E);
  static const moonGray = Color(0xFF9E9E9E);

  // Status Colors
  static const errorRed = Color(0xFFD32F2F);
  static const warningOrange = Color(0xFFF57C00);
  static const successGreen = Color(0xFF388E3C);
  static const infoBlue = Color(0xFF1976D2);

  // Neutral Colors
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const gray50 = Color(0xFFFAFAFA);
  static const gray100 = Color(0xFFF5F5F5);
  static const gray200 = Color(0xFFEEEEEE);
  static const gray300 = Color(0xFFE0E0E0);
  static const gray400 = Color(0xFFBDBDBD);
  static const gray500 = Color(0xFF9E9E9E);
  static const gray600 = Color(0xFF757575);
  static const gray700 = Color(0xFF616161);
  static const gray800 = Color(0xFF424242);
  static const gray900 = Color(0xFF212121);

  // Temperature Colors (optional for visualizations)
  static const hotRed = Color(0xFFE53935);
  static const warmOrange = Color(0xFFFB8C00);
  static const mildYellow = Color(0xFFFDD835);
  static const coolBlue = Color(0xFF42A5F5);
  static const coldCyan = Color(0xFF26C6DA);
  static const freezingBlue = Color(0xFF1E88E5);
}
