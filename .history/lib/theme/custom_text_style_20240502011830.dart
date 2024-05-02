import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {}

class CustomTextStyles {
  // Body text style
  static get bodyMediumBlack90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90002,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray100 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray100,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray50 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray5014 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50,
        fontSize: 14.fSize,
      );
  static get bodySmallPinkA400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.pinkA400,
      );
// Headline text style
  static get headlineSmallBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
// Title text style
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPinkA40001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.pinkA40001,
        fontWeight: FontWeight.w600,
      );
}
