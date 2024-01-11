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

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MWURouterDelegate routerDelegate = MWURouterDelegate.instance;
    final MWURouterInformationParser routerInformationParser =
        MWURouterInformationParser();

    return MaterialApp.router(
      title: 'MWU',
      theme: mwuTheme,
      routerDelegate: routerDelegate,
      routeInformationParser: routerInformationParser,
      debugShowCheckedModeBanner: false,
    );
  }
}
