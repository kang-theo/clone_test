import 'package:flutter/material.dart';
import 'package:mwu/theme/color_manager.dart';
import 'package:mwu/theme/text_style_manager.dart';

final ColorScheme _colors = ColorScheme.fromSeed(seedColor: Colors.transparent);

final ThemeData mwuTheme = ThemeData(
  textTheme: AppTextTheme.theme,
  brightness: Brightness.light,
  colorScheme: _colors,
  scaffoldBackgroundColor: _colors.white,
  dialogBackgroundColor: _colors.white,
  splashColor: _colors.transparent,
  hoverColor: _colors.transparent,
  focusColor: _colors.transparent,
  hintColor: _colors.transparent,
  highlightColor: _colors.transparent,
  dialogTheme: DialogTheme(
    backgroundColor: _colors.white,
  ),
  primaryColor: _colors.white,
  bottomAppBarTheme: BottomAppBarTheme(
    color: _colors.white,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: _colors.white,
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    selectedItemColor: _colors.primary,
    unselectedItemColor: _colors.grey300,
    selectedIconTheme: const IconThemeData(
      size: 24,
    ),
    selectedLabelStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    unselectedLabelStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: _colors.white,
    elevation: 0,
  ),
);

extension ThemeGetter on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => theme.colorScheme;
  TextTheme get textTheme => theme.textTheme;
}
