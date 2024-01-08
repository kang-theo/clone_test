import 'package:flutter/material.dart';
import 'package:mwu/constants/colors.dart';

class AppColorScheme {
  static ColorScheme get scheme => const ColorScheme.light(
        primary: MWUColors.white,
        onPrimary: MWUColors.black,
        secondary: MWUColors.black,
        onSecondary: MWUColors.white,
      );
}
