import 'package:flutter/material.dart';
import 'package:mwu/routes/route_path.dart';

class MWURouterInformationParser extends RouteInformationParser<MWURoutePath> {
  @override
  Future<MWURoutePath> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    final uri = routeInformation.uri.path;
    if (uri == '/another') {
      return MWURoutePath.another();
    } else {
      return MWURoutePath.example();
    }
  }

  @override
  RouteInformation restoreRouteInformation(MWURoutePath configuration) {
    switch (configuration.name) {
      case "example":
        return RouteInformation(uri: Uri.parse('/'));
    }
    return RouteInformation(uri: Uri.parse('/'));
  }
}
