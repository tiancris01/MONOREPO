import 'package:flutter/material.dart';
import '../foundations/app_colors.dart';

/// Semantic color tokens using ThemeExtension.
/// Provides context-aware colors that automatically switch between light and dark themes.
/// Access in widgets: `Theme.of(context).extension<ColorTokens>()!`
class ColorTokens extends ThemeExtension<ColorTokens> {
  /// Primary brand color - used for main actions and emphasis
  final Color primary;

  /// Color for content on primary color backgrounds
  final Color onPrimary;

  /// Secondary brand color - used for less prominent actions
  final Color secondary;

  /// Color for content on secondary color backgrounds
  final Color onSecondary;

  /// Main background color for the app
  final Color background;

  /// Color for content on background
  final Color onBackground;

  /// Surface color for cards, sheets, menus
  final Color surface;

  /// Color for content on surface
  final Color onSurface;

  /// Error state color
  final Color error;

  /// Color for content on error color backgrounds
  final Color onError;

  /// Success state color (e.g., completed actions)
  final Color success;

  /// Warning state color (e.g., alerts)
  final Color warning;

  /// Informational state color
  final Color info;

  /// Border and divider color
  final Color border;

  /// Disabled state color for inactive elements
  final Color disabled;

  /// Shadow color for elevation
  final Color shadow;

  /// Weather-specific: Sky/day color
  final Color sky;

  /// Weather-specific: Night color
  final Color night;

  /// Weather-specific: Sun/warm color
  final Color sun;

  /// Weather-specific: Cloud/neutral color
  final Color cloud;

  const ColorTokens({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.error,
    required this.onError,
    required this.success,
    required this.warning,
    required this.info,
    required this.border,
    required this.disabled,
    required this.shadow,
    required this.sky,
    required this.night,
    required this.sun,
    required this.cloud,
  });

  /// Light theme color tokens
  static final light = ColorTokens(
    primary: AppColors.deepSkyBlue,
    onPrimary: AppColors.white,
    secondary: AppColors.sunYellow,
    onSecondary: AppColors.gray900,
    background: AppColors.gray50,
    onBackground: AppColors.gray900,
    surface: AppColors.white,
    onSurface: AppColors.gray900,
    error: AppColors.errorRed,
    onError: AppColors.white,
    success: AppColors.successGreen,
    warning: AppColors.warningOrange,
    info: AppColors.infoBlue,
    border: AppColors.gray300,
    disabled: AppColors.gray400,
    shadow: AppColors.black.withValues(alpha: 0.1),
    sky: AppColors.skyBlue,
    night: AppColors.nightBlue,
    sun: AppColors.sunYellow,
    cloud: AppColors.cloudGray,
  );

  /// Dark theme color tokens
  static final dark = ColorTokens(
    primary: AppColors.skyBlue,
    onPrimary: AppColors.gray900,
    secondary: AppColors.sunsetOrange,
    onSecondary: AppColors.gray900,
    background: AppColors.gray900,
    onBackground: AppColors.gray100,
    surface: AppColors.gray800,
    onSurface: AppColors.gray100,
    error: AppColors.errorRed,
    onError: AppColors.white,
    success: AppColors.successGreen,
    warning: AppColors.warningOrange,
    info: AppColors.infoBlue,
    border: AppColors.gray700,
    disabled: AppColors.gray600,
    shadow: AppColors.black.withValues(alpha: 0.3),
    sky: AppColors.nightBlue,
    night: AppColors.gray900,
    sun: AppColors.sunsetOrange,
    cloud: AppColors.stormGray,
  );

  @override
  ThemeExtension<ColorTokens> copyWith({
    Color? primary,
    Color? onPrimary,
    Color? secondary,
    Color? onSecondary,
    Color? background,
    Color? onBackground,
    Color? surface,
    Color? onSurface,
    Color? error,
    Color? onError,
    Color? success,
    Color? warning,
    Color? info,
    Color? border,
    Color? disabled,
    Color? shadow,
    Color? sky,
    Color? night,
    Color? sun,
    Color? cloud,
  }) {
    return ColorTokens(
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      secondary: secondary ?? this.secondary,
      onSecondary: onSecondary ?? this.onSecondary,
      background: background ?? this.background,
      onBackground: onBackground ?? this.onBackground,
      surface: surface ?? this.surface,
      onSurface: onSurface ?? this.onSurface,
      error: error ?? this.error,
      onError: onError ?? this.onError,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      info: info ?? this.info,
      border: border ?? this.border,
      disabled: disabled ?? this.disabled,
      shadow: shadow ?? this.shadow,
      sky: sky ?? this.sky,
      night: night ?? this.night,
      sun: sun ?? this.sun,
      cloud: cloud ?? this.cloud,
    );
  }

  @override
  ThemeExtension<ColorTokens> lerp(
    covariant ThemeExtension<ColorTokens>? other,
    double t,
  ) {
    if (other is! ColorTokens) return this;

    return ColorTokens(
      primary: Color.lerp(primary, other.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      background: Color.lerp(background, other.background, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      error: Color.lerp(error, other.error, t)!,
      onError: Color.lerp(onError, other.onError, t)!,
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      info: Color.lerp(info, other.info, t)!,
      border: Color.lerp(border, other.border, t)!,
      disabled: Color.lerp(disabled, other.disabled, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
      sky: Color.lerp(sky, other.sky, t)!,
      night: Color.lerp(night, other.night, t)!,
      sun: Color.lerp(sun, other.sun, t)!,
      cloud: Color.lerp(cloud, other.cloud, t)!,
    );
  }
}
