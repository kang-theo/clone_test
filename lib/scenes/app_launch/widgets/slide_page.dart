import 'package:flutter/material.dart';
import 'package:mwu/constants/paddings.dart';
import 'package:mwu/theme/color_manager.dart';
import 'package:mwu/theme/theme_manager.dart';

class SlidePage extends StatelessWidget {
  const SlidePage({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
  });

  final String imageUrl;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    final BuildContext(
      :textTheme,
      :colorScheme,
    ) = context;
    final primaryColor = colorScheme.white;
    final slideTitleStyle = textTheme.headlineMedium?.copyWith(
      color: primaryColor,
    );
    final slideDescStyle = textTheme.titleMedium?.copyWith(
      color: primaryColor,
    );

    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: double.infinity,
          child: ClipRRect(
            child: Transform(
              transform: Matrix4.identity()..scale(1.15),
              alignment: const FractionalOffset(
                0.5,
                0.75,
              ),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
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
