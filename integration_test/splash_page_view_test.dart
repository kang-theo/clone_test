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

      await binding.convertFlutterSurfaceToImage();
      await tester.pumpAndSettle();
      await binding.takeScreenshot('$screenshotFolder/startup');

      final BuildContext(
        :appTitle,
        :introButtonText,
        :introSlideImages,
        :introSlideTexts,
      ) = getContext(tester);
      final [move, withUs] = appTitle;
      final [IntroSlideText(:title, :description), ..._] = introSlideTexts;
      final [imageUrl, ..._] = introSlideImages;

      expect(find.text(move), findsOneWidget);
      expect(find.text(withUs), findsOneWidget);
      expect(find.text(introButtonText), findsOneWidget);
      expect(find.text(title), findsOneWidget);
      expect(find.text(description), findsOneWidget);
      expect(
        findImageByUrl(imageUrl),
        findsOneWidget,
      );
    });

    testWidgets(
      "Page view should render texts and image for second slide after swipe",
      (WidgetTester tester) async {
        await setUpPageTester(tester, const SplashPageView());

        await tester.drag(find.byType(PageView), const Offset(-400.0, 0.0));
        await tester.pump();

        await binding.convertFlutterSurfaceToImage();
        await tester.pumpAndSettle();
        await binding.takeScreenshot('$screenshotFolder/after_swipe');

        final BuildContext(
          :appTitle,
          :introButtonText,
          :introSlideImages,
          :introSlideTexts,
        ) = getContext(tester);

        final [move, withUs] = appTitle;
        final [firstImageUrl, secondImageUrl, ..._] = introSlideImages;
        final [firstSlideText, secondSlideText, ..._] = introSlideTexts;
        final IntroSlideText(:title, :description) = secondSlideText;

        expect(find.text(move), findsOneWidget);
        expect(find.text(withUs), findsOneWidget);
        expect(find.text(introButtonText), findsOneWidget);
        expect(find.text(title), findsOneWidget);
        expect(find.text(description), findsOneWidget);
        expect(
          findImageByUrl(secondImageUrl),
          findsOneWidget,
        );

        final firstPageTitle = firstSlideText.title;
        final firstPageDescription = firstSlideText.description;

        expect(find.text(firstPageTitle), findsNothing);
        expect(find.text(firstPageDescription), findsNothing);
        expect(
          findImageByUrl(firstImageUrl),
          findsNothing,
        );
      },
    );

    testWidgets(
      "Page view should be able to scroll automatically",
      (WidgetTester tester) async {
        await setUpPageTester(tester, const SplashPageView());
        await tester.pump(const Duration(seconds: 4));
        await tester.pumpAndSettle();
        final pageView = tester.widget<PageView>(find.byType(PageView));
        expect(pageView.controller.page, 1);
      },
    );

    testWidgets(
      "PageView should have ClampingScrollPhysics and won't allow user to scroll once it reaches the last page",
      (WidgetTester tester) async {
        await setUpPageTester(tester, const SplashPageView());
        final pageView = tester.widget<PageView>(find.byType(PageView));

        final BuildContext(:introSlideImages) = getContext(tester);
        final length = introSlideImages.length;

        expect(pageView.physics, isA<ClampingScrollPhysics>());

        for (int i = 0; i < length; i++) {
          await tester.drag(find.byType(PageView), const Offset(-400.0, 0.0));
          await tester.pump();
        }

        expect(pageView.controller.page, length - 1);
      },
    );

    testWidgets(
      "PageView auto scroll should scroll back to the first page when there are no more pages on the right",
      (WidgetTester tester) async {
        await setUpPageTester(tester, const SplashPageView());

        final BuildContext(:introSlideImages) = getContext(tester);

        for (int i = 0; i < introSlideImages.length; i++) {
          await tester.pump(const Duration(seconds: 3));
          await tester.pumpAndSettle();
        }

        final PageController(:page) =
            tester.widget<PageView>(find.byType(PageView)).controller;
        expect(page, 0);
      },
    );
  });
}
