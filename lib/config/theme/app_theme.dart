import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MaterialTheme {

  const MaterialTheme(this.textTheme);
  final TextTheme textTheme;

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,

      // Primary: The "Signature" Deep Cyan
      primary: Color(0xff00677D),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffB1EBFF), // Tonal lift for containers
      onPrimaryContainer: Color(0xff001F27),

      // Secondary: Mapped to "Success/Income" (#386B01) per guidelines
      secondary: Color(0xff386B01),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffB7F397),
      onSecondaryContainer: Color(0xff0D2000),

      // Tertiary: Mapped to "Error/Expense" (#BA1A1A) per guidelines
      tertiary: Color(0xffBA1A1A),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffFFDAD6),
      onTertiaryContainer: Color(0xff410002),

      // Error: Standardized with Tertiary for consistency in finance
      error: Color(0xffBA1A1A),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffFFDAD6),
      onErrorContainer: Color(0xff93000a),

      // Backgrounds: Using the "Atmospheric Depth" Palette
      surface: Color(0xffFBFCFD), // Base "Fluid" surface
      onSurface: Color(0xff191C1D), // Deep tint for "Ambient Shadows"
      onSurfaceVariant: Color(0xff3F484B),

      // Outlines: Used only for the "Ghost Border" at 15% opacity
      outline: Color(0xff6F797B),
      outlineVariant: Color(0xffBFC8CB),

      // Tonal-First Architecture (The Hierarchy Tiers)
      surfaceContainerLowest: Color(0xffffffff), // Pure white for "Lifted" cards
      surfaceContainerLow: Color(0xffF0F4F5),    // Section backgrounds
      surfaceContainer: Color(0xffEAEFF0),       // Parent containers
      surfaceContainerHigh: Color(0xffE1E9EA),   // Elevated headers
      surfaceContainerHighest: Color(0xffD7E3E5), // Input field backgrounds

      // Utility & Branding
      surfaceTint: Color(0xff00677D),
      inverseSurface: Color(0xff2D3132),
      inversePrimary: Color(0xff59D5F8),
      scrim: Color(0xff000000),
      shadow: Color(0xff191C1D), // Tinted shadow base per guideline
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff004A5A), // Darkened Deep Cyan for contrast
      surfaceTint: Color(0xff00677D),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff007F9A),
      onPrimaryContainer: Color(0xffffffff),

      // Success/Income Contrast
      secondary: Color(0xff264A00),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff4D8D02),
      onSecondaryContainer: Color(0xffffffff),

      // Expense Contrast
      tertiary: Color(0xff8C0009),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffE0383E),
      onTertiaryContainer: Color(0xffffffff),

      error: Color(0xff8C0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffDA342E),
      onErrorContainer: Color(0xffffffff),

      surface: Color(0xffFBFCFD),
      onSurface: Color(0xff0A1D21), // Sharper text
      onSurfaceVariant: Color(0xff3B4446),
      outline: Color(0xff576163),
      outlineVariant: Color(0xff727C7E),
      shadow: Color(0xff191C1D),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2D3132),
      inversePrimary: Color(0xff59D5F8),

      // Fixed Tokens
      primaryFixed: Color(0xff007F9A),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff006075),
      onPrimaryFixedVariant: Color(0xffffffff),

      // Surface Hierarchy (Condensed for Medium Contrast)
      surfaceDim: Color(0xffD5DBDC),
      surfaceBright: Color(0xffFBFCFD),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffF0F4F5),
      surfaceContainer: Color(0xffE4E9EA),
      surfaceContainerHigh: Color(0xffD9DFE0),
      surfaceContainerHighest: Color(0xffCED5D6),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00262F), // Maximum Depth Cyan
      surfaceTint: Color(0xff00677D),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004A5A),
      onPrimaryContainer: Color(0xffffffff),

      // High-Vis Success/Income
      secondary: Color(0xff142800),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff264A00),
      onSecondaryContainer: Color(0xffffffff),

      // High-Vis Expense
      tertiary: Color(0xff4E0002),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff8C0009),
      onTertiaryContainer: Color(0xffffffff),

      error: Color(0xff4E0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8C0009),
      onErrorContainer: Color(0xffffffff),

      surface: Color(0xffFBFCFD),
      onSurface: Color(0xff000000), // Purest Contrast
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff202B2D),
      outlineVariant: Color(0xff3F4A4C),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2D3132),
      inversePrimary: Color(0xffB1EBFF),

      // Fixed Tokens
      primaryFixed: Color(0xff004A5A),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00323D),
      onPrimaryFixedVariant: Color(0xffffffff),

      // Surface Hierarchy (Aggressive Tiers)
      surfaceDim: Color(0xffC8CFD0),
      surfaceBright: Color(0xffFBFCFD),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffF0F4F5),
      surfaceContainer: Color(0xffE1E9EA),
      surfaceContainerHigh: Color(0xffD2DBDC),
      surfaceContainerHighest: Color(0xffC4CED0),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,

      // Primary: Radiant Cyan for dark backgrounds
      primary: Color(0xff59D5F8),
      surfaceTint: Color(0xff59D5F8),
      onPrimary: Color(0xff003642),
      primaryContainer: Color(0xff004E5F),
      onPrimaryContainer: Color(0xffB1EBFF),

      // Secondary: Income/Success - Vibrant but balanced for dark mode
      secondary: Color(0xff9EE07D),
      onSecondary: Color(0xff183600),
      secondaryContainer: Color(0xff264A00),
      onSecondaryContainer: Color(0xffB7F397),

      // Tertiary: Expense/Error - Vivid contrast
      tertiary: Color(0xffFFB4AB),
      onTertiary: Color(0xff690005),
      tertiaryContainer: Color(0xff93000a),
      onTertiaryContainer: Color(0xffFFDAD6),

      error: Color(0xffFFB4AB),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffFFDAD6),

      // Backgrounds: Midnight Teal Architecture
      // We use a very deep teal-tinted black to prevent "flat" pure black
      surface: Color(0xff0E1416),
      onSurface: Color(0xffDEE3E5),
      onSurfaceVariant: Color(0xffBFC8CB),

      // Outlines: Subtle "Ghost" hints
      outline: Color(0xff899295),
      outlineVariant: Color(0xff3F484B),

      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffDEE3E5),
      inversePrimary: Color(0xff00677D),

      // Fixed Tokens: Maintaining clarity in transactions
      primaryFixed: Color(0xffB1EBFF),
      onPrimaryFixed: Color(0xff001F27),
      primaryFixedDim: Color(0xff59D5F8),
      onPrimaryFixedVariant: Color(0xff004E5F),

      // Surface Hierarchy: The "Radiant Depth" Tiers
      surfaceDim: Color(0xff0E1416),
      surfaceBright: Color(0xff343A3C),
      surfaceContainerLowest: Color(0xff090F11), // Deepest base
      surfaceContainerLow: Color(0xff171D1F),    // Section background
      surfaceContainer: Color(0xff1B2123),       // Card background
      surfaceContainerHigh: Color(0xff252B2D),   // Elevated header
      surfaceContainerHighest: Color(0xff303638), // Input field background
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff59D5F8), // Vibrant Cyan
      surfaceTint: Color(0xff59D5F8),
      onPrimary: Color(0xff001F27),
      primaryContainer: Color(0xff007F9A),
      onPrimaryContainer: Color(0xffffffff),

      // Success/Income Contrast
      secondary: Color(0xff9EE07D),
      onSecondary: Color(0xff003900),
      secondaryContainer: Color(0xff386B01),
      onSecondaryContainer: Color(0xffffffff),

      // Expense Contrast
      tertiary: Color(0xffFFB4AB),
      onTertiary: Color(0xff410002),
      tertiaryContainer: Color(0xffBA1A1A),
      onTertiaryContainer: Color(0xffffffff),

      error: Color(0xffFFB4AB),
      onError: Color(0xff410002),
      errorContainer: Color(0xffBA1A1A),
      onErrorContainer: Color(0xffffffff),

      surface: Color(0xff0E1416),
      onSurface: Color(0xffFBFCFD), // Near-white text
      onSurfaceVariant: Color(0xffC3CCD0),
      outline: Color(0xff9BA4A6),
      outlineVariant: Color(0xff7B8486),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffDEE3E5),
      inversePrimary: Color(0xff00677D),

      // Fixed Tokens
      primaryFixed: Color(0xffB1EBFF),
      onPrimaryFixed: Color(0xff001F27),
      primaryFixedDim: Color(0xff59D5F8),
      onPrimaryFixedVariant: Color(0xff004E5F),

      // Surface Hierarchy (Medium Contrast Depth)
      surfaceDim: Color(0xff0E1416),
      surfaceBright: Color(0xff343A3C),
      surfaceContainerLowest: Color(0xff05090B),
      surfaceContainerLow: Color(0xff1B2123),
      surfaceContainer: Color(0xff252B2D),
      surfaceContainerHigh: Color(0xff2F3638),
      surfaceContainerHighest: Color(0xff3A4143),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffE6F7FF), // Ultra-bright Cyan
      surfaceTint: Color(0xff59D5F8),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff59D5F8),
      onPrimaryContainer: Color(0xff000000),

      // High-Vis Success/Income
      secondary: Color(0xffEBFFDF),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff9EE07D),
      onSecondaryContainer: Color(0xff000000),

      // High-Vis Expense
      tertiary: Color(0xffFFEDE9),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffFFB4AB),
      onTertiaryContainer: Color(0xff000000),

      error: Color(0xffFFEDE9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffFFB4AB),
      onErrorContainer: Color(0xff000000),

      surface: Color(0xff0E1416),
      onSurface: Color(0xffffffff), // Pure white text
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffE1E9EA),
      outlineVariant: Color(0xffBFC8CB),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffDEE3E5),
      inversePrimary: Color(0xff00323D),

      // Fixed Tokens
      primaryFixed: Color(0xffB1EBFF),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff59D5F8),
      onPrimaryFixedVariant: Color(0xff001F27),

      // Surface Hierarchy (Pure Black Base for Maximum Contrast)
      surfaceDim: Color(0xff0E1416),
      surfaceBright: Color(0xff4B5153),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1D2325),
      surfaceContainer: Color(0xff2D3335),
      surfaceContainerHigh: Color(0xff383F41),
      surfaceContainerHighest: Color(0xff444B4D),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );


  static TextTheme createTextTheme(
      BuildContext context,
      String bodyFontString,
      String displayFontString,
      ) {
    final baseTextTheme = Theme.of(context).textTheme;
    final bodyTextTheme = GoogleFonts.getTextTheme(
      bodyFontString,
      baseTextTheme,
    );
    final displayTextTheme = GoogleFonts.getTextTheme(
      displayFontString,
      baseTextTheme,
    );
    final textTheme = displayTextTheme.copyWith(
      bodyLarge: bodyTextTheme.bodyLarge,
      bodyMedium: bodyTextTheme.bodyMedium,
      bodySmall: bodyTextTheme.bodySmall,
      labelLarge: bodyTextTheme.labelLarge,
      labelMedium: bodyTextTheme.labelMedium,
      labelSmall: bodyTextTheme.labelSmall,
    );
    return textTheme;
  }
}

