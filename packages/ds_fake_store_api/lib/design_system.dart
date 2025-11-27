// Design System for Weather App
//
// This library provides a complete design system with:
// - Foundations: Raw design values (colors, typography, spacing)
// - Tokens: Semantic ThemeExtension tokens
// - Theme: Pre-configured Material themes
//
// ## Usage
//
// ### Setup Theme
// ```dart
// import 'package:ds_fake_store_api/design_system.dart';
//
// MaterialApp(
//   theme: AppTheme.light(),
//   darkTheme: AppTheme.dark(),
//   themeMode: ThemeMode.system,
// );
// ```
//
// ### Access Tokens in Widgets
// ```dart
// final colors = Theme.of(context).extension<ColorTokens>()!;
// final spacing = Theme.of(context).extension<SpacingTokens>()!;
// final textStyles = Theme.of(context).extension<TextTokens>()!;
//
// Container(
//   color: colors.sky,
//   padding: spacing.cardPadding,
//   child: Text('Weather', style: textStyles.headlineLarge),
// );
// ```

// Foundations (Raw Values)
export 'design_system/foundations/app_colors.dart';
export 'design_system/foundations/app_typography.dart';
export 'design_system/foundations/app_spacing.dart';

// Tokens (Semantic ThemeExtensions)
export 'design_system/tokens/color_tokens.dart';
export 'design_system/tokens/text_tokens.dart';
export 'design_system/tokens/spacing_tokens.dart';

// Theme Configuration
export 'design_system/theme/app_theme.dart';

// Extensions
export 'design_system/extensions/theme_extensions.dart';
