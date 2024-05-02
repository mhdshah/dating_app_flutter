import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Bg decorations
  static BoxDecoration get bg => BoxDecoration(
        color: appTheme.black900,
      );
// Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90002,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
// Gradient decorations
  static BoxDecoration get gradientBlackToBlack => BoxDecoration(
        border: Border.all(
          color: appTheme.gray80001,
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.51, 1),
          end: Alignment(0.51, 0.58),
          colors: [appTheme.black90002, appTheme.black90002.withOpacity(0)],
        ),
      );
  static BoxDecoration get gradientBlackToBlueGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.23, 0.06),
          end: Alignment(0.58, 0.77),
          colors: [appTheme.black90001, appTheme.blueGray900],
        ),
      );
  static BoxDecoration get gradientBlackToBluegray900 => BoxDecoration(
        border: Border.all(
          color: appTheme.black900,
          width: 2.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.23, 0.06),
          end: Alignment(0.58, 0.77),
          colors: [appTheme.black90001, appTheme.blueGray900],
        ),
      );
  static BoxDecoration get gradientPinkAToPinkA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.14, 0.07),
          end: Alignment(0.5, 1),
          colors: [appTheme.pinkA40001, appTheme.pinkA200],
        ),
      );
// Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.black90002,
        border: Border.all(
          color: appTheme.gray90001,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );
// Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
}
