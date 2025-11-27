import 'package:flutter/material.dart';
import 'package:ds_fake_store_api/design_system.dart';

/// Extension on BuildContext to easily access design tokens
/// without the verbose Theme.of(context).extension\<T\>()! syntax
///
/// Usage:
/// ```dart
/// // Instead of:
/// final colors = Theme.of(context).extension\<ColorTokens\>()!;
///
/// // Use:
/// Container(color: context.appColors.primary)
/// Text('Hello', style: context.appTypography.headlineLarge)
/// Padding(padding: context.appSpacing.cardPadding)
/// ```
extension ThemeTokensExtension on BuildContext {
  /// Access color tokens from the current theme
  ///
  /// Provides access to semantic color values including:
  /// - Brand colors (primary, secondary)
  /// - Surface colors (background, surface)
  /// - Status colors (error, success, warning)
  /// - Weather-specific colors (sky, sun, cloud, night)
  ColorTokens get appColors => Theme.of(this).extension<ColorTokens>()!;

  /// Access spacing tokens from the current theme
  ///
  /// Provides access to:
  /// - Raw spacing values (xs, sm, md, lg, xl)
  /// - Border radius values
  /// - Padding presets (cardPadding, screenPadding, etc.)
  SpacingTokens get appSpacing => Theme.of(this).extension<SpacingTokens>()!;

  /// Access text style tokens from the current theme
  ///
  /// Provides access to Material Design 3 typography scale:
  /// - Display styles (displayLarge, displayMedium, displaySmall)
  /// - Headline styles (headlineLarge, headlineMedium, headlineSmall)
  /// - Title styles (titleLarge, titleMedium, titleSmall)
  /// - Body styles (bodyLarge, bodyMedium, bodySmall)
  /// - Label styles (labelLarge, labelMedium, labelSmall)
  /// - Weather-specific styles (temperature, data)
  TextTokens get appTypography => Theme.of(this).extension<TextTokens>()!;
}
