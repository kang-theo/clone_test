import 'package:flutter/material.dart';

class HomePageController {
  int counter = 0;

  VoidCallback? onCounterUpdated;

  void incrementCounter() {
    counter++;
    onCounterUpdated?.call();
  }
}
