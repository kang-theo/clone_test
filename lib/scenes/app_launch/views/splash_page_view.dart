import 'package:flutter/material.dart';
import 'package:mwu/common/widgets/base_button.dart';
import 'package:mwu/constants/texts.dart';
import 'package:mwu/scenes/app_launch/widgets/slides.dart';
import 'package:mwu/scenes/app_launch/widgets/slide_page_indicator.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  int currentPageIndex = 1000;
  final PageController pageController = PageController(initialPage: 1000);

  @override
  Widget build(BuildContext context) {
    final appTitle = MWUTexts.launchFlowTexts.appTitle;

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 1.076,
        child: Stack(
          alignment: const AlignmentDirectional(0, -1),
          children: [
            Slides(
              pageController: pageController,
              currentPageIndex: currentPageIndex,
              onPageChanged: (index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 70),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        appTitle[0],
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                      ),
                      Text(
                        appTitle[1],
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
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
                        SlidePageIndicator(
                          pageController: pageController,
                          currentPageIndex: currentPageIndex,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 30),
                      child: BaseButton(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        textColor: Theme.of(context).colorScheme.secondary,
                        buttonText: "Let's get started",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
