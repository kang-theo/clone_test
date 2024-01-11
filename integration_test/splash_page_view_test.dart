import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mwu/constants/images.dart';
import 'package:mwu/constants/texts.dart';
import 'package:mwu/scenes/app_launch/splash_page_view.dart';

import 'utils/index.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  const screenshotFolder = 'splash_page';

  group("Splash Page Test", () {
    testWidgets(
        "Splash Page should render texts and image for first slide on startup",
        (WidgetTester tester) async {
      await setUpPageTester(tester, const SplashPageView());

      await tester.pumpAndSettle();
      await binding.convertFlutterSurfaceToImage();
      await tester.pumpAndSettle();
      await binding.takeScreenshot('$screenshotFolder/startup');

      final BuildContext context = getContext(tester);
      final appTitle = context.appTitle;
      final move = appTitle[0];
      final withUs = appTitle[1];
      final buttonText = context.introButtonText;
      final firstPageTitle = context.introSlideTexts[0].title;
      final firstPageDescription = context.introSlideTexts[0].description;
      final firstImageUrl = context.introSlideImages[0];

      expect(find.text(move), findsOneWidget);
      expect(find.text(withUs), findsOneWidget);
      expect(find.text(buttonText), findsOneWidget);
      expect(find.text(firstPageTitle), findsOneWidget);
      expect(find.text(firstPageDescription), findsOneWidget);
      expect(
        findImageByUrl(firstImageUrl),
        findsOneWidget,
      );
    });

    testWidgets(
      "Page view should render texts and image for second slide after swipe",
      (WidgetTester tester) async {
        await setUpPageTester(tester, const SplashPageView());

        await tester.pumpAndSettle();
        await tester.drag(find.byType(PageView), const Offset(-400.0, 0.0));
        await tester.pump();

        await binding.convertFlutterSurfaceToImage();
        await tester.pumpAndSettle();
        await binding.takeScreenshot('$screenshotFolder/after_swipe');

        final BuildContext context = getContext(tester);

        final appTitle = context.appTitle;
        final move = appTitle[0];
        final withUs = appTitle[1];
        final buttonText = context.introButtonText;
        final secondPageTitle = context.introSlideTexts[1].title;
        final secondPageDescription = context.introSlideTexts[1].description;
        final secondImageUrl = context.introSlideImages[1];

        expect(find.text(move), findsOneWidget);
        expect(find.text(withUs), findsOneWidget);
        expect(find.text(buttonText), findsOneWidget);
        expect(find.text(secondPageTitle), findsOneWidget);
        expect(find.text(secondPageDescription), findsOneWidget);
        expect(
          findImageByUrl(secondImageUrl),
          findsOneWidget,
        );

        final firstPageTitle = context.introSlideTexts[0].title;
        final firstPageDescription = context.introSlideTexts[0].description;
        final firstImageUrl = context.introSlideImages[0];

        expect(find.text(firstPageTitle), findsNothing);
        expect(find.text(firstPageDescription), findsNothing);
        expect(
          findImageByUrl(firstImageUrl),
          findsNothing,
        );
      },
    );
  });
}
