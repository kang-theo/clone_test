import 'package:flutter/material.dart';

class AppTextTheme {
  static TextTheme get theme => const TextTheme(
        headlineMedium: TextStyle(
          fontFamily: 'Canela',
          fontSize: 28.0,
          fontWeight: FontWeight.w300,
        ),
        titleMedium: TextStyle(
          fontFamily: 'Futura Std',
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          fontFamily: 'Gill Sans',
          fontSize: 18.0,
        ),
        labelMedium: TextStyle(
          fontFamily: 'Gill Sans',
          fontSize: 15.0,
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          fontFamily: 'Futura Std',
          fontSize: 24.0,
          letterSpacing: 12.0,
        ),
      );
}
