import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mwu/constants/images.dart';

class SplashPageViewModel {
  final int currentPageIndex;
  final PageController pageController;
  Timer autoLoopTimer;

  SplashPageViewModel({
    required this.currentPageIndex,
    required this.pageController,
    required this.autoLoopTimer,
  });
}

class SplashPageProvider extends StateNotifier<SplashPageViewModel> {
  SplashPageProvider()
      : super(
          SplashPageViewModel(
            currentPageIndex: 0,
            pageController: PageController(initialPage: 0),
            autoLoopTimer: Timer.periodic(
              const Duration(seconds: 3),
              (_) {},
            ),
          ),
        );

  void setPageIndex(int index) {
    state = SplashPageViewModel(
      currentPageIndex: index,
      pageController: state.pageController,
      autoLoopTimer: state.autoLoopTimer,
    );
  }

  void swipeToPage(int index) {
    state.pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 100),
      curve: Curves.ease,
    );
    setPageIndex(index);
  }

  void startLoopTimer(
    BuildContext context,
    WidgetRef ref,
  ) {
    state.autoLoopTimer = Timer.periodic(
      const Duration(seconds: 3),
      (_) {
        final currentPageIndex = ref.watch(splashPageProvider).currentPageIndex;
        final splashPageNotifier = ref.read(splashPageProvider.notifier);
        final newPageIndex =
            currentPageIndex + 1 == context.introSlideImages.length
                ? 0
                : currentPageIndex + 1;

        splashPageNotifier.setPageIndex(newPageIndex);
        splashPageNotifier.swipeToPage(newPageIndex);
      },
    );
  }

  void stopLoopTimer() {
    state.autoLoopTimer.cancel();
  }
}

final splashPageProvider =
    StateNotifierProvider<SplashPageProvider, SplashPageViewModel>((ref) {
  return SplashPageProvider();
});
