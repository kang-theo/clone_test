class MWUTexts {
  static LaunchFlowTexts launchFlowTexts = LaunchFlowTexts();
}

class IntroSlideText {
  final String title;
  final String subTitle;

  IntroSlideText({
    required this.title,
    required this.subTitle,
  });
}

class LaunchFlowTexts {
  final List<IntroSlideText> introSlideTexts;
  final List<String> appTitle;

  LaunchFlowTexts()
      : introSlideTexts = [
          IntroSlideText(
            title: "Welcome to  our female fitness community",
            subTitle: "We're so excited be a part of your journey to evolve!",
          ),
          IntroSlideText(
            title: "Home & gym workouts",
            subTitle:
                "Choose from hundreds of workouts with video demonstrations, exercise swap options and more.",
          ),
          IntroSlideText(
            title: "Experience science-based nutrition",
            subTitle:
                "Dietitian-created Meal Guides created for your personal goals and preferences + over 1200 additional delicious recipes!",
          ),
          IntroSlideText(
            title: "Progress tracking and accountability",
            subTitle:
                "Set daily tasks and track your hydration, activity, nutrition, sleep and so much more.",
          ),
          IntroSlideText(
            title: "Support and Guidance",
            subTitle: "We're on this journey with you, every step of the way!",
          ),
        ],
        appTitle = [
          'move.',
          'withus',
        ].map((str) => str.toUpperCase()).toList();
}
