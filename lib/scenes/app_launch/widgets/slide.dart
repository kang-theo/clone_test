import 'package:flutter/material.dart';
import 'package:mwu/constants/paddings.dart';
import 'package:mwu/theme/color_manager.dart';
import 'package:mwu/theme/theme_manager.dart';

class SlidePage extends StatelessWidget {
  const SlidePage({
    super.key,
    required this.slideImage,
    required this.title,
    required this.subTitle,
  });

  final Widget slideImage;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final primaryColor = context.colorScheme.white;
    final slideTitleStyle = textTheme.headlineMedium?.copyWith(
      color: primaryColor,
    );
    final slideDescStyle = textTheme.titleMedium?.copyWith(
      color: primaryColor,
    );

    return Stack(
      alignment: Alignment.center,
      children: [
        slideImage,
        Padding(
          padding: MWUPaddings.horizontal50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: slideTitleStyle,
              ),
              Text(
                subTitle,
                textAlign: TextAlign.center,
                style: slideDescStyle,
              ),
              const SizedBox(
                height: 160,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
