import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'riverpod_example_view_model.dart';

class RiverPodExample extends ConsumerWidget {
  const RiverPodExample({super.key});

  // This widget is the root of your application.
  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final int count = ref.watch(riverpodExampleProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Riverpod Counter Example',
        ),
      ),
      body: Center(
        child: Text(
          'Count: $count',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(riverpodExampleProvider.notifier).increment(),
        child: const Icon(
          Icons.add,
        ),
      ),
      // routes: appRoutes,
    );
  }
}
