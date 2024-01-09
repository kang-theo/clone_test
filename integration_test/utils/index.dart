import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mwu/theme/theme_manager.dart';

Future<void> setUpPageTester(WidgetTester tester, Widget widget) async {
  await tester.pumpWidget(
    MaterialApp(
      home: widget,
      theme: mwuTheme,
      debugShowCheckedModeBanner: false,
    ),
  );
}

BuildContext getContext(WidgetTester tester) {
  return tester.element(find.byType(Scaffold));
}

Finder findImageByUrl(String imageUrl) {
  return find.byWidgetPredicate((Widget widget) {
    if (widget is Image) {
      Image imageWidget = widget;
      AssetImage assetImage = imageWidget.image as AssetImage;

      return (imageWidget.image is AssetImage) &&
          (assetImage.assetName == imageUrl);
    }
    return false;
  });
}
