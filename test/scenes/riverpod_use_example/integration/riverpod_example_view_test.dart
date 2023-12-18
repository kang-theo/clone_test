import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mwu/scenes/riverpod_use_example/riverpod_example_view.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    Widget testWidget = const ProviderScope(
      child: MaterialApp(
        home: RiverPodExample(),
      ),
    );

    await tester.pumpWidget(
      testWidget,
    );

    // Verify that our counter starts at 0.
    expect(find.text('Count: 0'), findsOneWidget);
    expect(find.text('Count: 1'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('Count: 0'), findsNothing);
    expect(find.text('Count: 1'), findsOneWidget);
  });
}
