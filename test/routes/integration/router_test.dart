import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mwu/routes/router_delegate.dart';
import 'package:mwu/routes/router_info_parser.dart';

void main() {
  final routerDelegate = MWURouterDelegate.instance;
  final routeInformationParser = MWURouterInformationParser();

  testWidgets('Navigation test', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp.router(
          routerDelegate: routerDelegate,
          routeInformationParser: routeInformationParser,
        ),
      ),
    );

    expect(find.text('Riverpod Counter Example'), findsOneWidget);
    expect(find.text('Another Page'), findsNothing);

    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();

    expect(find.text('Riverpod Counter Example'), findsNothing);
    expect(find.text('Another Page'), findsOneWidget);

    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();

    expect(find.text('Riverpod Counter Example'), findsOneWidget);
    expect(find.text('Another Page'), findsNothing);
  });
}
