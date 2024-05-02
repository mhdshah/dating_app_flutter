import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable
class ThemeHelper {
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
        visualDensity: VisualDensity.standard,
        colorScheme: colorScheme,
        textTheme: TextThemes.textTheme(colorScheme),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            side: BorderSide(
              color: appTheme.pinkA400,
              width: 1,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            visualDensity: const VisualDensity(
              vertical: -4,
              horizontal: -4,
            ),
            padding: EdgeInsets.zero,
          ),
        ),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent);
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray500,
          fontSize: 16.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.blueGray100,
          fontSize: 15.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w300,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray80001,
          fontSize: 12.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: appTheme.gray50,
          fontSize: 28.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.gray50,
          fontSize: 24.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w300,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray50,
          fontSize: 14.fSize,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light();
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Black
  Color get black900 => Color(0XFF0D0C0D);
  Color get black90001 => Color(0XFF0F0F0F);
  Color get black90002 => Color(0XFF000000);
// BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray900 => Color(0XFF2E2E2E);
// DeepPurple
  Color get deepPurpleA700 => Color(0XFF7000FF);
// Gray
  Color get gray100 => Color(0XFFF5F5F5);
  Color get gray50 => Color(0XFFFBFBFB);
  Color get gray500 => Color(0XFFADADAD);
  Color get gray600 => Color(0XFF858585);
  Color get gray800 => Color(0XFF393939);
  Color get gray80001 => Color(0XFF3A3A3A);
  Color get gray900 => Color(0XFF1F1F1F);
  Color get gray90001 => Color(0XFF202020);
  Color get gray90002 => Color(0XFF1A1A1A);
// Pink
  Color get pink500 => Color(0XFFFF0E73);
  Color get pinkA200 => Color(0XFFFF4593);
  Color get pinkA400 => Color(0XFFFF016B);
  Color get pinkA40001 => Color(0XFFFF006B);
// PinkB
  Color get pink900B2 => Color(0XB2611132);
// Teal
  Color get tealA200 => Color(0XFF45FFF3);
  Color get tealA20001 => Color(0XFF45FFF4);
// White
  Color get whiteA700 => Color(0XFFFFFFFF);
}
