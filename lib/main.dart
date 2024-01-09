import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mwu/routes/router_delegate.dart';
import 'package:mwu/routes/router_info_parser.dart';
import 'package:mwu/theme/theme_manager.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final MWURouterDelegate _routerDelegate = MWURouterDelegate.instance;
  final MWURouterInformationParser _routerInformationParser =
      MWURouterInformationParser();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'MWU',
      theme: mwuTheme,
      routerDelegate: _routerDelegate,
      routeInformationParser: _routerInformationParser,
      debugShowCheckedModeBanner: false,
    );
  }
}
