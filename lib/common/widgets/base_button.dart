import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final String buttonText;
  final Color backgroundColor;
  final Color textColor;

  const BaseButton({
    super.key,
    required this.buttonText,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 30),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor,
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(vertical: 16),
          elevation: 0,
          splashFactory: NoSplash.splashFactory,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
        child: Text(
          buttonText.toUpperCase(),
          style: TextStyle(
            color: textColor,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
