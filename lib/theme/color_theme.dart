import 'package:flutter/material.dart';
import 'package:mwu/constants/colors.dart';

class AppColorScheme {
  static ColorScheme get scheme => const ColorScheme.light(
        primary: AppColors.white,
        onPrimary: AppColors.black,
        secondary: AppColors.black,
        onSecondary: AppColors.white,
      );
}
