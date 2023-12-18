import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverpodExampleViewModel extends StateNotifier<int> {
  RiverpodExampleViewModel() : super(0);

  void increment() => state++;
}

final riverpodExampleProvider =
    StateNotifierProvider<RiverpodExampleViewModel, int>((ref) {
  return RiverpodExampleViewModel();
});
