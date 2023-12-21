import 'package:flutter/material.dart';
import 'package:mwu/routes/route_path.dart';
import 'package:mwu/scenes/app_launch/views/splash_page_view.dart';

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
      name: "splash",
      child: SplashPage(),
    ),
  ];

  List<Page> get pages => _pages;

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
    if (_pages.isNotEmpty) {
      final removed = _pages.removeLast();
      notifyListeners();
      return removed;
    }
  }

  popAndPush(MWURoutePath router) {
    pop();
    push(router);
  }
}
