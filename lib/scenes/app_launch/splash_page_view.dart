import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mwu/common/widgets/base_button.dart';
import 'package:mwu/constants/images.dart';
import 'package:mwu/constants/paddings.dart';
import 'package:mwu/constants/texts.dart';
import 'package:mwu/scenes/app_launch/splash_page_view_model.dart';
import 'package:mwu/scenes/app_launch/widgets/slide_page.dart';
import 'package:mwu/theme/color_manager.dart';
import 'package:mwu/theme/theme_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashPageView extends ConsumerStatefulWidget {
  const SplashPageView({
    super.key,
  });

  @override
  ConsumerState<SplashPageView> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPageView> {
  late SplashPageProvider pageNotifier;

  @override
  void initState() {
    super.initState();
    pageNotifier = ref.read(splashPageProvider.notifier)
      ..startLoopTimer(context, ref);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    for (String imageUrl in context.introSlideImages) {
      precacheImage(AssetImage(imageUrl), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final appTitle = context.appTitle;
    final buttonText = context.introButtonText;

    final colorScheme = context.colorScheme;
    final primaryColor = colorScheme.white;
    final textColor = colorScheme.black;
    final dotColor = colorScheme.grey300;

    final appTitleStyle = context.textTheme.titleSmall?.copyWith(
      color: primaryColor,
    );
    final appTitleBoldStyle = appTitleStyle?.copyWith(
      fontWeight: FontWeight.w700,
    );

    final pageController = ref.watch(splashPageProvider).pageController;

    final slideTexts = context.introSlideTexts;
    final slideImages = context.introSlideImages;
    final pageCount = slideImages.length;

    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Listener(
                onPointerDown: (_) {
                  pageNotifier.stopLoopTimer();
                },
                onPointerUp: (_) {
                  pageNotifier.startLoopTimer(context, ref);
                },
                child: PageView.builder(
                  itemCount: pageCount,
                  physics: const ClampingScrollPhysics(),
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) {
                    pageNotifier.setPageIndex(index);
                  },
                  itemBuilder: (context, index) {
                    final slideText = slideTexts[index];
                    final title = slideText.title;
                    final subTitle = slideText.description;
                    final slideImage = slideImages[index];

                    return SlidePage(
                      imageUrl: slideImage,
                      title: title,
                      subTitle: subTitle,
                    );
                  },
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: MWUPaddings.top70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          appTitle[0],
                          style: appTitleBoldStyle,
                        ),
                        Text(
                          appTitle[1],
                          style: appTitleStyle,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: MWUPaddings.bottom100,
                    child: SmoothPageIndicator(
                      controller: pageController,
                      count: pageCount,
                      axisDirection: Axis.horizontal,
                      onDotClicked: (i) async {
                        pageNotifier.swipeToPage(i);
                      },
                      effect: ExpandingDotsEffect(
                        expansionFactor: 3,
                        spacing: 4,
                        radius: 16,
                        dotWidth: 8,
                        dotHeight: 8,
                        dotColor: dotColor,
                        activeDotColor: primaryColor,
                        paintStyle: PaintingStyle.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: MWUPaddings.bottom15,
              child: BaseButton(
                backgroundColor: colorScheme.background,
                textColor: textColor,
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
