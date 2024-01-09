import 'package:flutter/material.dart';
import 'package:mwu/constants/paddings.dart';
import 'package:mwu/theme/theme_manager.dart';

class BaseButton extends StatelessWidget {
  final String buttonText;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;

  const BaseButton({
    super.key,
    required this.buttonText,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final buttonTextStyle = context.textTheme.labelMedium?.copyWith(
      color: textColor,
    );

    return Padding(
      padding: MWUPaddings.all15,
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            foregroundColor: backgroundColor,
            backgroundColor: backgroundColor,
            padding: MWUPaddings.vertical15,
            elevation: 0,
            splashFactory: NoSplash.splashFactory,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
          ),
          child: Text(
            buttonText,
            style: buttonTextStyle,
          ),
        ),
      ),
    );
  }
}
