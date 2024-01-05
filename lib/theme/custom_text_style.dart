import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Headline text style
  static get headlineSmallBluegray800 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray800,
      );
  static get headlineSmallLightblue700 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.lightBlue700,
        fontWeight: FontWeight.w900,
      );
  static get headlineSmallOleLightblue700 =>
      theme.textTheme.headlineSmall!.ole.copyWith(
        color: appTheme.lightBlue700,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallOleRedA200 =>
      theme.textTheme.headlineSmall!.ole.copyWith(
        color: appTheme.redA200,
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeBluegray600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray600,
        fontSize: 13.fSize,
      );
  // Title text style
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumGray400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray400,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }

  TextStyle get ole {
    return copyWith(
      fontFamily: 'Ole',
    );
  }
}
