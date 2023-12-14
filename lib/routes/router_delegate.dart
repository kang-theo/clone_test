import 'package:flutter/material.dart';
import 'package:mwu/scenes/routing_demo/another_page_view.dart';
import 'package:mwu/scenes/riverpod_use_example/riverpod_example_view.dart';

class MWURoutePath {
  final String name;
  final Map<String, dynamic>? parameters;
  final Widget widget;

  MWURoutePath.example({this.parameters})
      : name = "example",
        widget = const RiverPodExample();

  MWURoutePath.another({this.parameters})
      : name = "another",
        widget = const AnotherPage();
}

class MWURouterDelegate extends RouterDelegate<MWURoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<MWURoutePath> {
  static MWURouterDelegate instance = MWURouterDelegate();

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  MWURouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  static MWURouterDelegate of(BuildContext context) {
    final delegate = Router.of(context).routerDelegate;
    assert(delegate is MWURouterDelegate, "Delegate type must match");
    return delegate as MWURouterDelegate;
  }

  final List<Page> _pages = <Page>[
    const MaterialPage(
      name: "example",
      child: RiverPodExample(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: List.of(_pages),
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        pop();
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(MWURoutePath configuration) async {}

  push(MWURoutePath router) {
    _pages.add(
      MaterialPage(
        name: router.name,
        child: router.widget,
      ),
    );
    notifyListeners();
  }

  pop() {
    if (_pages.length > 1) {
      _pages.remove(_pages.last);
      notifyListeners();
    }
  }

  popAndPush(MWURoutePath router) {
    pop();
    push(router);
  }
}
