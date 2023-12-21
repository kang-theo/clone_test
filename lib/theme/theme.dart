import 'package:flutter/material.dart';
import 'package:mwu/theme/color_theme.dart';
import 'package:mwu/theme/text_theme.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
        textTheme: AppTextTheme.theme,
        colorScheme: AppColorScheme.scheme,
      );
}
