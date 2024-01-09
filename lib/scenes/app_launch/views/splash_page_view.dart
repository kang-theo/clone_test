import 'package:flutter/material.dart';
import 'package:mwu/common/widgets/base_button.dart';
import 'package:mwu/constants/paddings.dart';
import 'package:mwu/constants/texts.dart';
import 'package:mwu/scenes/app_launch/widgets/intro_slides.dart';
import 'package:mwu/theme/color_manager.dart';
import 'package:mwu/theme/theme_manager.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    final buttonText = context.introButtonText;
    final backgroundColor = context.colorScheme.white;
    final textColor = context.colorScheme.black;

    return Scaffold(
      body: Stack(
        children: [
          const IntroSlides(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: MWUPaddings.bottom15,
              child: BaseButton(
                backgroundColor: backgroundColor,
                textColor: textColor,
                buttonText: buttonText,
                onPressed: () => {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
