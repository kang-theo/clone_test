import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mwu/common/widgets/base_button.dart';

void main() {
  testWidgets("BaseButton should render correctly",
      (WidgetTester tester) async {
    bool isButtonPressed = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: BaseButton(
            buttonText: "Test Button",
            backgroundColor: Colors.black,
            textColor: Colors.white,
            onPressed: () {
              isButtonPressed = true;
            },
          ),
        ),
      ),
    );

    debugDumpApp();

    final button = find.text("Test Button");

    expect(button, findsExactly(1));

    expect(button, findsOneWidget);

    await tester.tap(button);

    await tester.pump();

    expect(isButtonPressed, true);
  });
}
