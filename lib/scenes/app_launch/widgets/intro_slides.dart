import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mwu/constants/colors.dart';
import 'package:mwu/constants/images.dart';
import 'package:mwu/constants/paddings.dart';
import 'package:mwu/constants/texts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroSlides extends StatefulWidget {
  const IntroSlides({
    super.key,
  });

  @override
  State<IntroSlides> createState() => _IntroSlidesState();
}

class _IntroSlidesState extends State<IntroSlides> {
  int currentPageIndex = 1000;
  final PageController pageController = PageController(initialPage: 1000);

  @override
  Widget build(BuildContext context) {
    final appTitle = MWUTexts.launchFlowTexts.appTitle;
    final primaryColor = Theme.of(context).colorScheme.primary;
    final appTitleStyle = Theme.of(context).textTheme.titleSmall?.copyWith(
          color: primaryColor,
        );
    final appTitleBoldStyle = appTitleStyle?.copyWith(
      fontWeight: FontWeight.w700,
    );

    return Stack(
      children: [
        IntroSlidesPageView(
          pageController: pageController,
          currentPageIndex: currentPageIndex,
          onPageChanged: (index) {
            setState(() {
              currentPageIndex = index;
            });
            log(pageController.page.toString());
          },
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
              child: SlidePageIndicator(
                pageController: pageController,
                currentPageIndex: currentPageIndex,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class IntroSlidesPageView extends StatefulWidget {
  const IntroSlidesPageView({
    super.key,
    required this.pageController,
    required this.currentPageIndex,
    required this.onPageChanged,
  });

  final PageController pageController;
  final void Function(int) onPageChanged;
  final int currentPageIndex;

  @override
  State<IntroSlidesPageView> createState() => _IntroSlidesPageViewState();
}

class _IntroSlidesPageViewState extends State<IntroSlidesPageView> {
  late Timer autoScrollTimer;

  @override
  void initState() {
    super.initState();
    autoScrollTimer = startAutoScroll();
  }

  @override
  void dispose() {
    autoScrollTimer.cancel();
    super.dispose();
  }

  Timer startAutoScroll() {
    return Timer.periodic(
      const Duration(seconds: 3),
      (_) {
        final scrollToPageIndex = widget.currentPageIndex + 1;

        widget.pageController.animateToPage(
          scrollToPageIndex,
          duration: const Duration(milliseconds: 100),
          curve: Curves.ease,
        );
      },
    );
  }

  List<Widget> buildSlideImages(BuildContext context) {
    return MWUImages.launchFlow.introSlideImages.map(
      (String imageUrl) {
        precacheImage(AssetImage(imageUrl), context);
        return SizedBox(
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
        );
      },
    ).toList();
  }

  @override
  Widget build(BuildContext context) {
    final slideImages = buildSlideImages(context);
    final slideTexts = MWUTexts.launchFlowTexts.introSlideTexts;

    return Listener(
      onPointerDown: (_) {
        autoScrollTimer.cancel();
      },
      onPointerUp: (_) {
        setState(() {
          autoScrollTimer = startAutoScroll();
        });
      },
      child: PageView.builder(
        controller: widget.pageController,
        scrollDirection: Axis.horizontal,
        onPageChanged: widget.onPageChanged,
        itemBuilder: (context, index) {
          final pageCount = index % slideImages.length;
          final slideText = slideTexts[pageCount];
          final title = slideText.title;
          final subTitle = slideText.subTitle;
          final slideImage = slideImages[pageCount];

          return Stack(
            alignment: Alignment.center,
            children: [
              slideImage,
              SlideText(
                title: title,
                subTitle: subTitle,
              ),
            ],
          );
        },
      ),
    );
  }
}

class SlideText extends StatelessWidget {
  final String title;
  final String subTitle;

  const SlideText({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final primaryColor = Theme.of(context).colorScheme.primary;
    final slideTitleStyle = textTheme.headlineMedium?.copyWith(
      color: primaryColor,
    );
    final slideDescStyle = textTheme.titleMedium?.copyWith(
      color: primaryColor,
    );

    return Padding(
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
    );
  }
}

class SlidePageIndicator extends StatelessWidget {
  const SlidePageIndicator({
    super.key,
    required this.pageController,
    required this.currentPageIndex,
  });

  final PageController pageController;
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    final slideImages = MWUImages.launchFlow.introSlideImages;

    return SmoothPageIndicator(
      controller: pageController,
      count: slideImages.length,
      axisDirection: Axis.horizontal,
      onDotClicked: (i) async {
        final scrollToPageIndex = i +
            (currentPageIndex / slideImages.length).floor() *
                slideImages.length;

        await pageController.animateToPage(
          scrollToPageIndex,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      },
      effect: const ExpandingDotsEffect(
        expansionFactor: 3,
        spacing: 4,
        radius: 16,
        dotWidth: 8,
        dotHeight: 8,
        dotColor: MWUColors.grey300,
        activeDotColor: MWUColors.white,
        paintStyle: PaintingStyle.fill,
      ),
    );
  }
}
