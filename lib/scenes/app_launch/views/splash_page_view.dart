import 'package:flutter/material.dart';
import 'package:mwu/common/widgets/base_button.dart';
import 'package:mwu/constants/paddings.dart';
import 'package:mwu/constants/texts.dart';
import 'package:mwu/scenes/app_launch/widgets/intro_slides.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    final buttonText = MWUTexts.launchFlowTexts.introButtonText;
    final primaryColor = Theme.of(context).colorScheme.primary;
    final secondaryColor = Theme.of(context).colorScheme.secondary;

    return Scaffold(
      body: Stack(
        children: [
          const IntroSlides(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: MWUPaddings.bottom15,
              child: BaseButton(
                backgroundColor: primaryColor,
                textColor: secondaryColor,
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
