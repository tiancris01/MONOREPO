import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../foundations/app_typography.dart';
import '../foundations/app_colors.dart';

/// Semantic text style tokens using ThemeExtension.
/// Provides Material Design 3 typography scale with Google Fonts.
/// Access in widgets: `Theme.of(context).extension<TextTokens>()!`
class TextTokens extends ThemeExtension<TextTokens> {
  // Display styles - largest, for hero sections
  final TextStyle displayLarge;
  final TextStyle displayMedium;
  final TextStyle displaySmall;

  // Headline styles - for section headers
  final TextStyle headlineLarge;
  final TextStyle headlineMedium;
  final TextStyle headlineSmall;

  // Title styles - for card titles, dialog headers
  final TextStyle titleLarge;
  final TextStyle titleMedium;
  final TextStyle titleSmall;

  // Body styles - for main content
  final TextStyle bodyLarge;
  final TextStyle bodyMedium;
  final TextStyle bodySmall;

  // Label styles - for buttons, form labels
  final TextStyle labelLarge;
  final TextStyle labelMedium;
  final TextStyle labelSmall;

  // Weather-specific: Temperature display (large numbers)
  final TextStyle temperature;

  // Weather-specific: Monospaced for data
  final TextStyle data;

  const TextTokens({
    required this.displayLarge,
    required this.displayMedium,
    required this.displaySmall,
    required this.headlineLarge,
    required this.headlineMedium,
    required this.headlineSmall,
    required this.titleLarge,
    required this.titleMedium,
    required this.titleSmall,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.bodySmall,
    required this.labelLarge,
    required this.labelMedium,
    required this.labelSmall,
    required this.temperature,
    required this.data,
  });

  /// Creates text tokens for light theme
  static TextTokens light() => _create(
    displayColor: AppColors.gray900,
    bodyColor: AppColors.gray800,
    subtleColor: AppColors.gray700,
  );

  /// Creates text tokens for dark theme
  static TextTokens dark() => _create(
    displayColor: AppColors.gray100,
    bodyColor: AppColors.gray200,
    subtleColor: AppColors.gray300,
  );

  /// Private factory to create text tokens with given colors
  /// Follows DRY principle by eliminating duplication
  static TextTokens _create({
    required Color displayColor,
    required Color bodyColor,
    required Color subtleColor,
  }) {
    return TextTokens(
      // Display - Poppins Bold
      displayLarge: GoogleFonts.poppins(
        fontSize: AppTypography.fontSize57,
        fontWeight: AppTypography.fontWeightBold,
        height: AppTypography.lineHeightTight,
        color: displayColor,
      ),
      displayMedium: GoogleFonts.poppins(
        fontSize: AppTypography.fontSize45,
        fontWeight: AppTypography.fontWeightBold,
        height: AppTypography.lineHeightTight,
        color: displayColor,
      ),
      displaySmall: GoogleFonts.poppins(
        fontSize: AppTypography.fontSize36,
        fontWeight: AppTypography.fontWeightBold,
        height: AppTypography.lineHeightTight,
        color: displayColor,
      ),

      // Headline - Poppins SemiBold
      headlineLarge: GoogleFonts.poppins(
        fontSize: AppTypography.fontSize32,
        fontWeight: AppTypography.fontWeightSemiBold,
        height: AppTypography.lineHeightNormal,
        color: displayColor,
      ),
      headlineMedium: GoogleFonts.poppins(
        fontSize: AppTypography.fontSize28,
        fontWeight: AppTypography.fontWeightSemiBold,
        height: AppTypography.lineHeightNormal,
        color: displayColor,
      ),
      headlineSmall: GoogleFonts.poppins(
        fontSize: AppTypography.fontSize24,
        fontWeight: AppTypography.fontWeightSemiBold,
        height: AppTypography.lineHeightNormal,
        color: displayColor,
      ),

      // Title - Poppins Medium
      titleLarge: GoogleFonts.poppins(
        fontSize: AppTypography.fontSize22,
        fontWeight: AppTypography.fontWeightMedium,
        height: AppTypography.lineHeightNormal,
        color: displayColor,
      ),
      titleMedium: GoogleFonts.poppins(
        fontSize: AppTypography.fontSize16,
        fontWeight: AppTypography.fontWeightMedium,
        height: AppTypography.lineHeightNormal,
        letterSpacing: AppTypography.letterSpacingWide,
        color: displayColor,
      ),
      titleSmall: GoogleFonts.poppins(
        fontSize: AppTypography.fontSize14,
        fontWeight: AppTypography.fontWeightMedium,
        height: AppTypography.lineHeightNormal,
        letterSpacing: AppTypography.letterSpacingWide,
        color: displayColor,
      ),

      // Body - Roboto Regular
      bodyLarge: GoogleFonts.roboto(
        fontSize: AppTypography.fontSize16,
        fontWeight: AppTypography.fontWeightRegular,
        height: AppTypography.lineHeightRelaxed,
        color: bodyColor,
      ),
      bodyMedium: GoogleFonts.roboto(
        fontSize: AppTypography.fontSize14,
        fontWeight: AppTypography.fontWeightRegular,
        height: AppTypography.lineHeightRelaxed,
        color: bodyColor,
      ),
      bodySmall: GoogleFonts.roboto(
        fontSize: AppTypography.fontSize12,
        fontWeight: AppTypography.fontWeightRegular,
        height: AppTypography.lineHeightNormal,
        color: subtleColor,
      ),

      // Label - Roboto Medium
      labelLarge: GoogleFonts.roboto(
        fontSize: AppTypography.fontSize14,
        fontWeight: AppTypography.fontWeightMedium,
        height: AppTypography.lineHeightNormal,
        letterSpacing: AppTypography.letterSpacingWide,
        color: displayColor,
      ),
      labelMedium: GoogleFonts.roboto(
        fontSize: AppTypography.fontSize12,
        fontWeight: AppTypography.fontWeightMedium,
        height: AppTypography.lineHeightNormal,
        letterSpacing: AppTypography.letterSpacingWide,
        color: displayColor,
      ),
      labelSmall: GoogleFonts.roboto(
        fontSize: AppTypography.fontSize11,
        fontWeight: AppTypography.fontWeightMedium,
        height: AppTypography.lineHeightNormal,
        letterSpacing: AppTypography.letterSpacingWide,
        color: displayColor,
      ),

      // Weather-specific: Temperature (large, bold)
      temperature: GoogleFonts.poppins(
        fontSize: AppTypography.fontSize72,
        fontWeight: AppTypography.fontWeightBold,
        height: 1.0,
        color: displayColor,
      ),

      // Weather-specific: Data (monospaced)
      data: GoogleFonts.robotoMono(
        fontSize: AppTypography.fontSize14,
        fontWeight: AppTypography.fontWeightRegular,
        height: AppTypography.lineHeightNormal,
        color: bodyColor,
      ),
    );
  }

  @override
  ThemeExtension<TextTokens> copyWith({
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? displaySmall,
    TextStyle? headlineLarge,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? labelLarge,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
    TextStyle? temperature,
    TextStyle? data,
  }) {
    return TextTokens(
      displayLarge: displayLarge ?? this.displayLarge,
      displayMedium: displayMedium ?? this.displayMedium,
      displaySmall: displaySmall ?? this.displaySmall,
      headlineLarge: headlineLarge ?? this.headlineLarge,
      headlineMedium: headlineMedium ?? this.headlineMedium,
      headlineSmall: headlineSmall ?? this.headlineSmall,
      titleLarge: titleLarge ?? this.titleLarge,
      titleMedium: titleMedium ?? this.titleMedium,
      titleSmall: titleSmall ?? this.titleSmall,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodySmall: bodySmall ?? this.bodySmall,
      labelLarge: labelLarge ?? this.labelLarge,
      labelMedium: labelMedium ?? this.labelMedium,
      labelSmall: labelSmall ?? this.labelSmall,
      temperature: temperature ?? this.temperature,
      data: data ?? this.data,
    );
  }

  @override
  ThemeExtension<TextTokens> lerp(
    covariant ThemeExtension<TextTokens>? other,
    double t,
  ) {
    if (other is! TextTokens) return this;

    return TextTokens(
      displayLarge: TextStyle.lerp(displayLarge, other.displayLarge, t)!,
      displayMedium: TextStyle.lerp(displayMedium, other.displayMedium, t)!,
      displaySmall: TextStyle.lerp(displaySmall, other.displaySmall, t)!,
      headlineLarge: TextStyle.lerp(headlineLarge, other.headlineLarge, t)!,
      headlineMedium: TextStyle.lerp(headlineMedium, other.headlineMedium, t)!,
      headlineSmall: TextStyle.lerp(headlineSmall, other.headlineSmall, t)!,
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t)!,
      titleMedium: TextStyle.lerp(titleMedium, other.titleMedium, t)!,
      titleSmall: TextStyle.lerp(titleSmall, other.titleSmall, t)!,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      labelLarge: TextStyle.lerp(labelLarge, other.labelLarge, t)!,
      labelMedium: TextStyle.lerp(labelMedium, other.labelMedium, t)!,
      labelSmall: TextStyle.lerp(labelSmall, other.labelSmall, t)!,
      temperature: TextStyle.lerp(temperature, other.temperature, t)!,
      data: TextStyle.lerp(data, other.data, t)!,
    );
  }
}
