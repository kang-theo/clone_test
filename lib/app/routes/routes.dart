import 'package:flutter/material.dart';
import '../../app/modules/dash_board/views/home_page.dart';


final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const HomePage(title: 'Flutter Demo Home Page'),
  // '/anotherPage': (context) => AnotherPage(),
  // more
};
