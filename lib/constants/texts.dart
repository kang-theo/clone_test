import 'package:flutter/material.dart';

class IntroSlideText {
  final String title;
  final String description;

  IntroSlideText({
    required this.title,
    required this.description,
  });
}

extension TextGetter on BuildContext {
  List<IntroSlideText> get introSlideTexts => [
        IntroSlideText(
          title: "Welcome to  our female fitness community",
          description: "We're so excited be a part of your journey to evolve!",
        ),
        IntroSlideText(
          title: "Home & gym workouts",
          description:
              "Choose from hundreds of workouts with video demonstrations, exercise swap options and more.",
        ),
        IntroSlideText(
          title: "Experience science-based nutrition",
          description:
              "Dietitian-created Meal Guides created for your personal goals and preferences + over 1200 additional delicious recipes!",
        ),
        IntroSlideText(
          title: "Progress tracking and accountability",
          description:
              "Set daily tasks and track your hydration, activity, nutrition, sleep and so much more.",
        ),
        IntroSlideText(
          title: "Support and Guidance",
          description: "We're on this journey with you, every step of the way!",
        ),
      ];

  List<String> get appTitle => [
        'move.',
        'withus',
      ].map((str) => str.toUpperCase()).toList();

  String get introButtonText => "Let's get started".toUpperCase();
}
