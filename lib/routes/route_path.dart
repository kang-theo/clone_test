import 'package:flutter/material.dart';
import 'package:mwu/scenes/riverpod_use_example/riverpod_example_view.dart';
import 'package:mwu/scenes/routing_demo/another_page_view.dart';

class MWURoutePath {
  final String name;
  final Widget widget;

  MWURoutePath.example()
      : name = "example",
        widget = const RiverPodExample();

  MWURoutePath.another()
      : name = "another",
        widget = const AnotherPage();
}
