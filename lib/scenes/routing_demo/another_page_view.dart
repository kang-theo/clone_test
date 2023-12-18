import 'package:flutter/material.dart';
import 'package:mwu/routes/router_delegate.dart';

class AnotherPage extends StatelessWidget {
  const AnotherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Another Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => MWURouterDelegate.of(context).pop(),
          child: const Text("Go back to home page"),
        ),
      ),
    );
  }
}
