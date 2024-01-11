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
    final SplashPageProvider(:cacheSlideImages) = pageNotifier;
    cacheSlideImages(context);
  }

  @override
  Widget build(BuildContext context) {
    final BuildContext(
      :appTitle,
      :introSlideTexts,
      :colorScheme,
      :textTheme,
      :introButtonText,
      :introSlideImages,
    ) = context;

    final pageCount = introSlideImages.length;
    final [move, withUs] = appTitle;

    final ColorScheme(
      :white,
      :black,
      :grey300,
    ) = colorScheme;

    final appTitleStyle = textTheme.titleSmall?.copyWith(
      color: white,
    );
    final appTitleBoldStyle = appTitleStyle?.copyWith(
      fontWeight: FontWeight.w700,
    );

    final SplashPageProvider(
      :startLoopTimer,
      :stopLoopTimer,
      :setPageIndex,
      :swipeToPage,
    ) = pageNotifier;

    final SplashPageViewModel(:pageController) = ref.watch(splashPageProvider);

    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Listener(
                onPointerDown: (_) {
                  stopLoopTimer();
                },
                onPointerUp: (_) {
                  startLoopTimer(context, ref);
                },
                child: PageView.builder(
                  itemCount: pageCount,
                  physics: const ClampingScrollPhysics(),
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) {
                    setPageIndex(index);
                  },
                  itemBuilder: (context, index) {
                    final IntroSlideText(:title, :description) =
                        introSlideTexts[index];
                    final slideImage = introSlideImages[index];

                    return SlidePage(
                      imageUrl: slideImage,
                      title: title,
                      subTitle: description,
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
                          move,
                          style: appTitleBoldStyle,
                        ),
                        Text(
                          withUs,
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
                        swipeToPage(i);
                      },
                      effect: ExpandingDotsEffect(
                        expansionFactor: 3,
                        spacing: 4,
                        radius: 16,
                        dotWidth: 8,
                        dotHeight: 8,
                        dotColor: grey300,
                        activeDotColor: white,
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
                backgroundColor: white,
                textColor: black,
                buttonText: introButtonText,
                onPressed: () => {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
