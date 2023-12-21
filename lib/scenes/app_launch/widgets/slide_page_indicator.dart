import 'package:flutter/material.dart';
import 'package:mwu/constants/colors.dart';
import 'package:mwu/constants/images.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
        await pageController.animateToPage(
          i +
              (currentPageIndex / slideImages.length).floor() *
                  slideImages.length,
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
        dotColor: AppColors.grey300,
        activeDotColor: AppColors.white,
        paintStyle: PaintingStyle.fill,
      ),
    );
  }
}
