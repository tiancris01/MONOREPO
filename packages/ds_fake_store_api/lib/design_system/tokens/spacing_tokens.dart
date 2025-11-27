import 'package:flutter/material.dart';
import '../foundations/app_spacing.dart';

/// Semantic spacing tokens using ThemeExtension.
/// Provides consistent spacing values and EdgeInsets helpers.
/// Access in widgets: `Theme.of(context).extension<SpacingTokens>()!`
class SpacingTokens extends ThemeExtension<SpacingTokens> {
  // Basic spacing values
  final double none;
  final double xxs;
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;
  final double xxl;
  final double xxxl;

  // Border radius values
  final double radiusNone;
  final double radiusXs;
  final double radiusSm;
  final double radiusMd;
  final double radiusLg;
  final double radiusXl;
  final double radiusFull;

  // EdgeInsets helpers
  final EdgeInsets paddingNone;
  final EdgeInsets paddingXxs;
  final EdgeInsets paddingXs;
  final EdgeInsets paddingSm;
  final EdgeInsets paddingMd;
  final EdgeInsets paddingLg;
  final EdgeInsets paddingXl;
  final EdgeInsets paddingXxl;

  // Horizontal padding
  final EdgeInsets paddingHorizontalXs;
  final EdgeInsets paddingHorizontalSm;
  final EdgeInsets paddingHorizontalMd;
  final EdgeInsets paddingHorizontalLg;
  final EdgeInsets paddingHorizontalXl;

  // Vertical padding
  final EdgeInsets paddingVerticalXs;
  final EdgeInsets paddingVerticalSm;
  final EdgeInsets paddingVerticalMd;
  final EdgeInsets paddingVerticalLg;
  final EdgeInsets paddingVerticalXl;

  // Common card/container padding
  final EdgeInsets cardPadding;
  final EdgeInsets screenPadding;
  final EdgeInsets sectionPadding;

  const SpacingTokens({
    required this.none,
    required this.xxs,
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
    required this.xxl,
    required this.xxxl,
    required this.radiusNone,
    required this.radiusXs,
    required this.radiusSm,
    required this.radiusMd,
    required this.radiusLg,
    required this.radiusXl,
    required this.radiusFull,
    required this.paddingNone,
    required this.paddingXxs,
    required this.paddingXs,
    required this.paddingSm,
    required this.paddingMd,
    required this.paddingLg,
    required this.paddingXl,
    required this.paddingXxl,
    required this.paddingHorizontalXs,
    required this.paddingHorizontalSm,
    required this.paddingHorizontalMd,
    required this.paddingHorizontalLg,
    required this.paddingHorizontalXl,
    required this.paddingVerticalXs,
    required this.paddingVerticalSm,
    required this.paddingVerticalMd,
    required this.paddingVerticalLg,
    required this.paddingVerticalXl,
    required this.cardPadding,
    required this.screenPadding,
    required this.sectionPadding,
  });

  /// Standard spacing tokens (same for light and dark themes)
  static final standard = SpacingTokens(
    // Basic spacing
    none: AppSpacing.none,
    xxs: AppSpacing.xxs,
    xs: AppSpacing.xs,
    sm: AppSpacing.sm,
    md: AppSpacing.md,
    lg: AppSpacing.lg,
    xl: AppSpacing.xl,
    xxl: AppSpacing.xxl,
    xxxl: AppSpacing.xxxl,

    // Border radius
    radiusNone: AppSpacing.radiusNone,
    radiusXs: AppSpacing.radiusXs,
    radiusSm: AppSpacing.radiusSm,
    radiusMd: AppSpacing.radiusMd,
    radiusLg: AppSpacing.radiusLg,
    radiusXl: AppSpacing.radiusXl,
    radiusFull: AppSpacing.radiusFull,

    // All sides padding
    paddingNone: EdgeInsets.zero,
    paddingXxs: const EdgeInsets.all(AppSpacing.xxs),
    paddingXs: const EdgeInsets.all(AppSpacing.xs),
    paddingSm: const EdgeInsets.all(AppSpacing.sm),
    paddingMd: const EdgeInsets.all(AppSpacing.md),
    paddingLg: const EdgeInsets.all(AppSpacing.lg),
    paddingXl: const EdgeInsets.all(AppSpacing.xl),
    paddingXxl: const EdgeInsets.all(AppSpacing.xxl),

    // Horizontal padding
    paddingHorizontalXs: const EdgeInsets.symmetric(horizontal: AppSpacing.xs),
    paddingHorizontalSm: const EdgeInsets.symmetric(horizontal: AppSpacing.sm),
    paddingHorizontalMd: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
    paddingHorizontalLg: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
    paddingHorizontalXl: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),

    // Vertical padding
    paddingVerticalXs: const EdgeInsets.symmetric(vertical: AppSpacing.xs),
    paddingVerticalSm: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
    paddingVerticalMd: const EdgeInsets.symmetric(vertical: AppSpacing.md),
    paddingVerticalLg: const EdgeInsets.symmetric(vertical: AppSpacing.lg),
    paddingVerticalXl: const EdgeInsets.symmetric(vertical: AppSpacing.xl),

    // Semantic padding
    cardPadding: const EdgeInsets.all(AppSpacing.md),
    screenPadding: const EdgeInsets.all(AppSpacing.lg),
    sectionPadding: const EdgeInsets.symmetric(
      horizontal: AppSpacing.md,
      vertical: AppSpacing.lg,
    ),
  );

  @override
  ThemeExtension<SpacingTokens> copyWith({
    double? none,
    double? xxs,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
    double? xxxl,
    double? radiusNone,
    double? radiusXs,
    double? radiusSm,
    double? radiusMd,
    double? radiusLg,
    double? radiusXl,
    double? radiusFull,
    EdgeInsets? paddingNone,
    EdgeInsets? paddingXxs,
    EdgeInsets? paddingXs,
    EdgeInsets? paddingSm,
    EdgeInsets? paddingMd,
    EdgeInsets? paddingLg,
    EdgeInsets? paddingXl,
    EdgeInsets? paddingXxl,
    EdgeInsets? paddingHorizontalXs,
    EdgeInsets? paddingHorizontalSm,
    EdgeInsets? paddingHorizontalMd,
    EdgeInsets? paddingHorizontalLg,
    EdgeInsets? paddingHorizontalXl,
    EdgeInsets? paddingVerticalXs,
    EdgeInsets? paddingVerticalSm,
    EdgeInsets? paddingVerticalMd,
    EdgeInsets? paddingVerticalLg,
    EdgeInsets? paddingVerticalXl,
    EdgeInsets? cardPadding,
    EdgeInsets? screenPadding,
    EdgeInsets? sectionPadding,
  }) {
    return SpacingTokens(
      none: none ?? this.none,
      xxs: xxs ?? this.xxs,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      xxl: xxl ?? this.xxl,
      xxxl: xxxl ?? this.xxxl,
      radiusNone: radiusNone ?? this.radiusNone,
      radiusXs: radiusXs ?? this.radiusXs,
      radiusSm: radiusSm ?? this.radiusSm,
      radiusMd: radiusMd ?? this.radiusMd,
      radiusLg: radiusLg ?? this.radiusLg,
      radiusXl: radiusXl ?? this.radiusXl,
      radiusFull: radiusFull ?? this.radiusFull,
      paddingNone: paddingNone ?? this.paddingNone,
      paddingXxs: paddingXxs ?? this.paddingXxs,
      paddingXs: paddingXs ?? this.paddingXs,
      paddingSm: paddingSm ?? this.paddingSm,
      paddingMd: paddingMd ?? this.paddingMd,
      paddingLg: paddingLg ?? this.paddingLg,
      paddingXl: paddingXl ?? this.paddingXl,
      paddingXxl: paddingXxl ?? this.paddingXxl,
      paddingHorizontalXs: paddingHorizontalXs ?? this.paddingHorizontalXs,
      paddingHorizontalSm: paddingHorizontalSm ?? this.paddingHorizontalSm,
      paddingHorizontalMd: paddingHorizontalMd ?? this.paddingHorizontalMd,
      paddingHorizontalLg: paddingHorizontalLg ?? this.paddingHorizontalLg,
      paddingHorizontalXl: paddingHorizontalXl ?? this.paddingHorizontalXl,
      paddingVerticalXs: paddingVerticalXs ?? this.paddingVerticalXs,
      paddingVerticalSm: paddingVerticalSm ?? this.paddingVerticalSm,
      paddingVerticalMd: paddingVerticalMd ?? this.paddingVerticalMd,
      paddingVerticalLg: paddingVerticalLg ?? this.paddingVerticalLg,
      paddingVerticalXl: paddingVerticalXl ?? this.paddingVerticalXl,
      cardPadding: cardPadding ?? this.cardPadding,
      screenPadding: screenPadding ?? this.screenPadding,
      sectionPadding: sectionPadding ?? this.sectionPadding,
    );
  }

  @override
  ThemeExtension<SpacingTokens> lerp(
    covariant ThemeExtension<SpacingTokens>? other,
    double t,
  ) {
    if (other is! SpacingTokens) return this;

    return SpacingTokens(
      none: lerpDouble(none, other.none, t) ?? none,
      xxs: lerpDouble(xxs, other.xxs, t) ?? xxs,
      xs: lerpDouble(xs, other.xs, t) ?? xs,
      sm: lerpDouble(sm, other.sm, t) ?? sm,
      md: lerpDouble(md, other.md, t) ?? md,
      lg: lerpDouble(lg, other.lg, t) ?? lg,
      xl: lerpDouble(xl, other.xl, t) ?? xl,
      xxl: lerpDouble(xxl, other.xxl, t) ?? xxl,
      xxxl: lerpDouble(xxxl, other.xxxl, t) ?? xxxl,
      radiusNone: lerpDouble(radiusNone, other.radiusNone, t) ?? radiusNone,
      radiusXs: lerpDouble(radiusXs, other.radiusXs, t) ?? radiusXs,
      radiusSm: lerpDouble(radiusSm, other.radiusSm, t) ?? radiusSm,
      radiusMd: lerpDouble(radiusMd, other.radiusMd, t) ?? radiusMd,
      radiusLg: lerpDouble(radiusLg, other.radiusLg, t) ?? radiusLg,
      radiusXl: lerpDouble(radiusXl, other.radiusXl, t) ?? radiusXl,
      radiusFull: lerpDouble(radiusFull, other.radiusFull, t) ?? radiusFull,
      paddingNone:
          EdgeInsets.lerp(paddingNone, other.paddingNone, t) ?? paddingNone,
      paddingXxs:
          EdgeInsets.lerp(paddingXxs, other.paddingXxs, t) ?? paddingXxs,
      paddingXs: EdgeInsets.lerp(paddingXs, other.paddingXs, t) ?? paddingXs,
      paddingSm: EdgeInsets.lerp(paddingSm, other.paddingSm, t) ?? paddingSm,
      paddingMd: EdgeInsets.lerp(paddingMd, other.paddingMd, t) ?? paddingMd,
      paddingLg: EdgeInsets.lerp(paddingLg, other.paddingLg, t) ?? paddingLg,
      paddingXl: EdgeInsets.lerp(paddingXl, other.paddingXl, t) ?? paddingXl,
      paddingXxl:
          EdgeInsets.lerp(paddingXxl, other.paddingXxl, t) ?? paddingXxl,
      paddingHorizontalXs:
          EdgeInsets.lerp(paddingHorizontalXs, other.paddingHorizontalXs, t) ??
          paddingHorizontalXs,
      paddingHorizontalSm:
          EdgeInsets.lerp(paddingHorizontalSm, other.paddingHorizontalSm, t) ??
          paddingHorizontalSm,
      paddingHorizontalMd:
          EdgeInsets.lerp(paddingHorizontalMd, other.paddingHorizontalMd, t) ??
          paddingHorizontalMd,
      paddingHorizontalLg:
          EdgeInsets.lerp(paddingHorizontalLg, other.paddingHorizontalLg, t) ??
          paddingHorizontalLg,
      paddingHorizontalXl:
          EdgeInsets.lerp(paddingHorizontalXl, other.paddingHorizontalXl, t) ??
          paddingHorizontalXl,
      paddingVerticalXs:
          EdgeInsets.lerp(paddingVerticalXs, other.paddingVerticalXs, t) ??
          paddingVerticalXs,
      paddingVerticalSm:
          EdgeInsets.lerp(paddingVerticalSm, other.paddingVerticalSm, t) ??
          paddingVerticalSm,
      paddingVerticalMd:
          EdgeInsets.lerp(paddingVerticalMd, other.paddingVerticalMd, t) ??
          paddingVerticalMd,
      paddingVerticalLg:
          EdgeInsets.lerp(paddingVerticalLg, other.paddingVerticalLg, t) ??
          paddingVerticalLg,
      paddingVerticalXl:
          EdgeInsets.lerp(paddingVerticalXl, other.paddingVerticalXl, t) ??
          paddingVerticalXl,
      cardPadding:
          EdgeInsets.lerp(cardPadding, other.cardPadding, t) ?? cardPadding,
      screenPadding:
          EdgeInsets.lerp(screenPadding, other.screenPadding, t) ??
          screenPadding,
      sectionPadding:
          EdgeInsets.lerp(sectionPadding, other.sectionPadding, t) ??
          sectionPadding,
    );
  }

  // Helper function for lerping doubles
  double? lerpDouble(double? a, double? b, double t) {
    if (a == null && b == null) return null;
    if (a == null) return b;
    if (b == null) return a;
    return a + (b - a) * t;
  }
}
