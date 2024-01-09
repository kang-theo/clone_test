import 'package:flutter/material.dart';

extension MWUColorSchemeExtensions on ColorScheme {
  // Primary colors
  Color get red => const Color(0xffFF0000);
  Color get pink => const Color(0xffEBA6B7);
  Color get tangerine => const Color(0xffF5833E);
  Color get gold => const Color(0xffEBD0BB);
  Color get orange => const Color(0xffFFCA90);
  Color get lightOrange => const Color(0xffFFD4A6);
  Color get yellow => const Color(0xffF6E077);
  Color get lightYellow => const Color(0xffFFE486);
  Color get green => const Color(0xffC5D7B1);
  Color get lightGreen => const Color(0xff00FF1A);
  Color get blue => const Color(0xff96C9DA);
  Color get lightBlue => const Color(0xffC0D9E4);
  Color get cobalt => const Color(0xff2B58ED);

  Color get grey600 => const Color(0xff6D6D6D);
  Color get grey400 => const Color(0xffC4C4C4);
  Color get grey300 => const Color(0xffD9D9D9);
  Color get grey200 => const Color(0xffDBDDDF);
  Color get grey50 => const Color(0xffF6F6F6);

  Color get primaryBlack => const Color(0xff00040B);
  Color get black => const Color(0xff000000);
  Color get white => const Color(0xffffffff);
  Color get transparent => Colors.transparent;
}
