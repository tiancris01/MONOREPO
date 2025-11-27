import 'package:flutter/material.dart';
import '../tokens/color_tokens.dart';
import '../tokens/text_tokens.dart';
import '../tokens/spacing_tokens.dart';

/// Main theme configuration for the weather app.
/// Combines all design tokens (colors, typography, spacing) into ThemeData.
///
/// Usage:
/// ```dart
/// MaterialApp(
///   theme: AppTheme.light(),
///   darkTheme: AppTheme.dark(),
///   themeMode: ThemeMode.system,
/// )
/// ```
class AppTheme {
  AppTheme._(); // Private constructor to prevent instantiation

  /// Light theme configuration
  static ThemeData light() {
    final colorTokens = ColorTokens.light;
    final textTokens = TextTokens.light();
    final spacingTokens = SpacingTokens.standard;

    return ThemeData(
      brightness: Brightness.light,

      // Color scheme (integrates with Material components)
      colorScheme: ColorScheme.light(
        primary: colorTokens.primary,
        onPrimary: colorTokens.onPrimary,
        secondary: colorTokens.secondary,
        onSecondary: colorTokens.onSecondary,
        surface: colorTokens.surface,
        onSurface: colorTokens.onSurface,
        error: colorTokens.error,
        onError: colorTokens.onError,
      ),

      // Scaffold background
      scaffoldBackgroundColor: colorTokens.background,

      // App bar theme
      appBarTheme: AppBarTheme(
        backgroundColor: colorTokens.surface,
        foregroundColor: colorTokens.onSurface,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: textTokens.titleLarge,
      ),

      // Card theme
      cardTheme: CardThemeData(
        color: colorTokens.surface,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(spacingTokens.radiusMd),
        ),
        margin: spacingTokens.paddingMd,
      ),

      // Elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorTokens.primary,
          foregroundColor: colorTokens.onPrimary,
          padding: EdgeInsets.symmetric(
            horizontal: spacingTokens.lg,
            vertical: spacingTokens.sm,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(spacingTokens.radiusSm),
          ),
          textStyle: textTokens.labelLarge,
        ),
      ),

      // Text button theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colorTokens.primary,
          padding: EdgeInsets.symmetric(
            horizontal: spacingTokens.md,
            vertical: spacingTokens.sm,
          ),
          textStyle: textTokens.labelLarge,
        ),
      ),

      // Input decoration theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colorTokens.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(spacingTokens.radiusSm),
          borderSide: BorderSide(color: colorTokens.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(spacingTokens.radiusSm),
          borderSide: BorderSide(color: colorTokens.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(spacingTokens.radiusSm),
          borderSide: BorderSide(color: colorTokens.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(spacingTokens.radiusSm),
          borderSide: BorderSide(color: colorTokens.error),
        ),
        contentPadding: spacingTokens.paddingMd,
        labelStyle: textTokens.bodyMedium,
        hintStyle: textTokens.bodyMedium.copyWith(color: colorTokens.disabled),
      ),

      // Divider theme
      dividerTheme: DividerThemeData(
        color: colorTokens.border,
        space: spacingTokens.md,
        thickness: 1,
      ),

      // Icon theme
      iconTheme: IconThemeData(color: colorTokens.onSurface, size: 24),

      // Typography - Material Design 3 text theme
      textTheme: TextTheme(
        displayLarge: textTokens.displayLarge,
        displayMedium: textTokens.displayMedium,
        displaySmall: textTokens.displaySmall,
        headlineLarge: textTokens.headlineLarge,
        headlineMedium: textTokens.headlineMedium,
        headlineSmall: textTokens.headlineSmall,
        titleLarge: textTokens.titleLarge,
        titleMedium: textTokens.titleMedium,
        titleSmall: textTokens.titleSmall,
        bodyLarge: textTokens.bodyLarge,
        bodyMedium: textTokens.bodyMedium,
        bodySmall: textTokens.bodySmall,
        labelLarge: textTokens.labelLarge,
        labelMedium: textTokens.labelMedium,
        labelSmall: textTokens.labelSmall,
      ),

      // Custom theme extensions
      extensions: <ThemeExtension<dynamic>>[
        colorTokens,
        textTokens,
        spacingTokens,
      ],

      // Use Material 3
      useMaterial3: true,
    );
  }

  /// Dark theme configuration
  static ThemeData dark() {
    final colorTokens = ColorTokens.dark;
    final textTokens = TextTokens.dark();
    final spacingTokens = SpacingTokens.standard;

    return ThemeData(
      brightness: Brightness.dark,

      // Color scheme (integrates with Material components)
      colorScheme: ColorScheme.dark(
        primary: colorTokens.primary,
        onPrimary: colorTokens.onPrimary,
        secondary: colorTokens.secondary,
        onSecondary: colorTokens.onSecondary,
        surface: colorTokens.surface,
        onSurface: colorTokens.onSurface,
        error: colorTokens.error,
        onError: colorTokens.onError,
      ),

      // Scaffold background
      scaffoldBackgroundColor: colorTokens.background,

      // App bar theme
      appBarTheme: AppBarTheme(
        backgroundColor: colorTokens.surface,
        foregroundColor: colorTokens.onSurface,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: textTokens.titleLarge,
      ),

      // Card theme
      cardTheme: CardThemeData(
        color: colorTokens.surface,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(spacingTokens.radiusMd),
        ),
        margin: spacingTokens.paddingMd,
      ),

      // Elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorTokens.primary,
          foregroundColor: colorTokens.onPrimary,
          padding: EdgeInsets.symmetric(
            horizontal: spacingTokens.lg,
            vertical: spacingTokens.sm,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(spacingTokens.radiusSm),
          ),
          textStyle: textTokens.labelLarge,
        ),
      ),

      // Text button theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colorTokens.primary,
          padding: EdgeInsets.symmetric(
            horizontal: spacingTokens.md,
            vertical: spacingTokens.sm,
          ),
          textStyle: textTokens.labelLarge,
        ),
      ),

      // Input decoration theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colorTokens.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(spacingTokens.radiusSm),
          borderSide: BorderSide(color: colorTokens.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(spacingTokens.radiusSm),
          borderSide: BorderSide(color: colorTokens.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(spacingTokens.radiusSm),
          borderSide: BorderSide(color: colorTokens.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(spacingTokens.radiusSm),
          borderSide: BorderSide(color: colorTokens.error),
        ),
        contentPadding: spacingTokens.paddingMd,
        labelStyle: textTokens.bodyMedium,
        hintStyle: textTokens.bodyMedium.copyWith(color: colorTokens.disabled),
      ),

      // Divider theme
      dividerTheme: DividerThemeData(
        color: colorTokens.border,
        space: spacingTokens.md,
        thickness: 1,
      ),

      // Icon theme
      iconTheme: IconThemeData(color: colorTokens.onSurface, size: 24),

      // Typography - Material Design 3 text theme
      textTheme: TextTheme(
        displayLarge: textTokens.displayLarge,
        displayMedium: textTokens.displayMedium,
        displaySmall: textTokens.displaySmall,
        headlineLarge: textTokens.headlineLarge,
        headlineMedium: textTokens.headlineMedium,
        headlineSmall: textTokens.headlineSmall,
        titleLarge: textTokens.titleLarge,
        titleMedium: textTokens.titleMedium,
        titleSmall: textTokens.titleSmall,
        bodyLarge: textTokens.bodyLarge,
        bodyMedium: textTokens.bodyMedium,
        bodySmall: textTokens.bodySmall,
        labelLarge: textTokens.labelLarge,
        labelMedium: textTokens.labelMedium,
        labelSmall: textTokens.labelSmall,
      ),

      // Custom theme extensions
      extensions: <ThemeExtension<dynamic>>[
        colorTokens,
        textTokens,
        spacingTokens,
      ],

      // Use Material 3
      useMaterial3: true,
    );
  }
}
