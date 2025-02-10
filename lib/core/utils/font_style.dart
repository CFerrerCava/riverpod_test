import 'package:flutter/material.dart';

// ignore: library_private_types_in_public_api
_AppFontStyle get $font => _AppFontStyle();

class _AppFontStyle {
  static const String _fontFamily = 'VariantFont';

  // Helper method to create FontVariation
  static List<FontVariation> _getVariation(double weight) {
    return [FontVariation('wght', weight)];
  }

  // Headlines
  TextStyle get displayLarge => TextStyle(
        fontSize: 57,
        fontVariations: _getVariation(400),
        fontFamily: _fontFamily,
      );

  TextStyle get displayMedium => TextStyle(
        fontSize: 45,
        fontVariations: _getVariation(400),
        fontFamily: _fontFamily,
      );

  TextStyle get displaySmall => TextStyle(
        fontSize: 36,
        fontVariations: _getVariation(400),
        fontFamily: _fontFamily,
      );

  // Body styles
  TextStyle get bodyLarge => TextStyle(
        fontSize: 16,
        fontVariations: _getVariation(400),
        fontFamily: _fontFamily,
      );

  TextStyle get bodyMedium => TextStyle(
        fontSize: 14,
        fontVariations: _getVariation(400),
        fontFamily: _fontFamily,
      );

  TextStyle get bodySmall => TextStyle(
        fontSize: 12,
        fontVariations: _getVariation(400),
        fontFamily: _fontFamily,
      );

  // Label styles
  TextStyle get labelLarge => TextStyle(
        fontSize: 14,
        fontVariations: _getVariation(500),
        fontFamily: _fontFamily,
      );

  TextStyle get labelMedium => TextStyle(
        fontSize: 12,
        fontVariations: _getVariation(500),
        fontFamily: _fontFamily,
      );

  TextStyle get labelSmall => TextStyle(
        fontSize: 11,
        fontVariations: _getVariation(500),
        fontFamily: _fontFamily,
      );

  // Title styles
  TextStyle get titleLarge => TextStyle(
        fontSize: 22,
        fontVariations: _getVariation(400),
        fontFamily: _fontFamily,
      );

  TextStyle get titleMedium => TextStyle(
        fontSize: 16,
        fontVariations: _getVariation(500),
        fontFamily: _fontFamily,
      );

  TextStyle get titleSmall => TextStyle(
        fontSize: 14,
        fontVariations: _getVariation(500),
        fontFamily: _fontFamily,
      );

  // Dynamic text style generator
  TextStyle customStyle({
    double? fontSize,
    double? weight,
    Color? color,
    double? height,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontVariations: weight != null ? _getVariation(weight) : null,
      color: color,
      height: height,
      decoration: decoration,
      fontFamily: _fontFamily,
    );
  }

  TextTheme get textTheme => TextTheme(
        displayLarge: displayLarge,
        displayMedium: displayMedium,
        displaySmall: displaySmall,
        bodyLarge: bodyLarge,
        bodyMedium: bodyMedium,
        bodySmall: bodySmall,
        labelLarge: labelLarge,
        labelMedium: labelMedium,
        labelSmall: labelSmall,
        titleLarge: titleLarge,
        titleMedium: titleMedium,
        titleSmall: titleSmall,
      );
}
