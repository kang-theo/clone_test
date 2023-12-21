import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mwu/constants/images.dart';
import 'package:mwu/constants/texts.dart';
import 'package:mwu/scenes/app_launch/widgets/slide_text.dart';

class Slides extends StatefulWidget {
  const Slides({
    super.key,
    required this.pageController,
    required this.currentPageIndex,
    required this.onPageChanged,
  });

  final PageController pageController;
  final void Function(int) onPageChanged;
  final int currentPageIndex;

  @override
  State<Slides> createState() => _SlidesState();
}

class _SlidesState extends State<Slides> {
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
        final scrollToPageIndex = widget.currentPageIndex % 5 < 4
            ? widget.currentPageIndex + 1
            : 1000;
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
