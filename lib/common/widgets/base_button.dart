import 'package:flutter/material.dart';
import 'package:mwu/constants/paddings.dart';

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
    final buttonTextStyle = Theme.of(context).textTheme.labelMedium;

    return Padding(
      padding: MWUPaddings.all15,
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            foregroundColor: textColor,
            backgroundColor: backgroundColor,
            padding: MWUPaddings.vertical15,
            elevation: 0,
            splashFactory: NoSplash.splashFactory,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
          ),
          child: Text(
            buttonText.toUpperCase(),
            style: buttonTextStyle,
          ),
        ),
      ),
    );
  }
}
