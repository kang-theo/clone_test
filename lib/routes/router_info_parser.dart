import 'package:flutter/material.dart';
import 'package:mwu/routes/route_path.dart';
import 'package:mwu/routes/router_delegate.dart';

class MWURouterInformationParser extends RouteInformationParser<MWURoutePath> {
  @override
  Future<MWURoutePath> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    final uri = routeInformation.uri.path;
    return MWURoutePath.example();
  }

  @override
  RouteInformation restoreRouteInformation(MWURoutePath path) {
    switch (path.name) {
      case "example":
        return const RouteInformation(location: '/');
    }
    return const RouteInformation(location: '/');
  }
}
