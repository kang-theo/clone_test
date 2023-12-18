import 'package:flutter_test/flutter_test.dart';
import 'package:mwu/routes/route_path.dart';
import 'package:mwu/routes/router_delegate.dart';

void main() {
  late MWURouterDelegate routerDelegate;

  setUp(() => routerDelegate = MWURouterDelegate.instance);

  test('MWURouterDelegate push method test', () {
    routerDelegate.push(MWURoutePath.another());

    expect(routerDelegate.pages.last.name, equals('another'));
  });

  test('MWURouterDelegate pop method test', () {
    final initialPagesCount = routerDelegate.pages.length;
    final popped = routerDelegate.pop();

    expect(routerDelegate.pages.length, equals(initialPagesCount - 1));
    expect(popped.name, 'another');
  });

  test('MWURouterDelegate popAndPush method test', () {
    final initialPagesCount = routerDelegate.pages.length;

    routerDelegate.popAndPush(MWURoutePath.example());

    expect(routerDelegate.pages.length, equals(initialPagesCount));
    expect(routerDelegate.pages.last.name, equals('example'));
  });
}
