import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:mwu/constants/images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  final PageController _pageController = PageController(initialPage: 1000);
  int _currentPageIndex = 1000;
  bool _isAutoScrollPaused = false;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        log(_isAutoScrollPaused.toString());
        if (_isAutoScrollPaused) return;

        final scrollToPageIndex =
            _currentPageIndex % 5 < 4 ? _currentPageIndex + 1 : 0;
        _pageController.animateToPage(
          scrollToPageIndex,
          duration: const Duration(milliseconds: 100),
          curve: Curves.ease,
        );
        _startAutoScroll();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final introSlideImages = MWUImages.launchFlow.introSlideImages;
    final children = introSlideImages.map(
      (String imageUrl) {
        precacheImage(AssetImage(imageUrl), context);
        return ClipRRect(
          child: Transform(
            transform: Matrix4.identity()..scale(1.15),
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    ).toList();

    return GestureDetector(
      onPanDown: (_) {
        setState(() {
          _isAutoScrollPaused = true;
        });
      },
      onPanEnd: (_) {
        setState(() {
          _isAutoScrollPaused = false;
          _startAutoScroll();
        });
      },
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height * 1.076,
          child: Stack(
            alignment: const AlignmentDirectional(0, -1),
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 1,
                child: PageView.builder(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPageIndex = index.abs();
                      log(_currentPageIndex.toString());
                    });
                  },
                  itemBuilder: (context, index) {
                    return children[(index % children.length).abs()];
                  },
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 40),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'M O V E . W I T H U S',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SmoothPageIndicator(
                            controller: _pageController,
                            count: children.length,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) async {
                              await _pageController.animateToPage(
                                i +
                                    (_currentPageIndex / children.length)
                                            .floor() *
                                        children.length,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: ExpandingDotsEffect(
                              expansionFactor: 3,
                              spacing: 4,
                              radius: 16,
                              dotWidth: 8,
                              dotHeight: 8,
                              dotColor: Colors.grey.shade300,
                              activeDotColor: Colors.white,
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            elevation: 3,
                            splashFactory: NoSplash.splashFactory,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          child: const Text(
                            'LET\'S GET STARTED',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
