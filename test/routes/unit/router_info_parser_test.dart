import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mwu/routes/route_path.dart';
import 'package:mwu/routes/router_info_parser.dart';

void main() {
  late MWURouterInformationParser parser;
  group("RouterInfoParser Test", () {
    setUpAll(() => {parser = MWURouterInformationParser()});

    test('MWURouterInformationParser parseRouteInformation test', () async {
      final routeInformation = RouteInformation(uri: Uri.parse('/another'));
      final parsedPath = await parser.parseRouteInformation(routeInformation);

      expect(parsedPath.name, equals('another'));
    });

    test('MWURouterInformationParser restoreRouteInformation test', () {
      final path = MWURoutePath.example();
      final restoredInformation = parser.restoreRouteInformation(path);

      expect(restoredInformation.uri.toString(), equals('/'));
    });
  });
}
