// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:mwu/routes/route_path.dart';
// import 'package:mwu/routes/router_delegate.dart';
//
// import 'login_view_model.dart';
//
// class LoginView extends ConsumerWidget {
//   const LoginView({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(
//       BuildContext context,
//       WidgetRef ref,
//       ) {
//     final int count = ref.watch(authProvider);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Login',
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Count: $count',
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 MWURouterDelegate.of(context).push(
//                   MWURoutePath.another(),
//                 );
//               },
//               child: const Text("Go to another page"),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => ref.read(authProvider.notifier).increment(),
//         child: const Icon(
//           Icons.add,
//         ),
//       ),
//       // routes: appRoutes,
//     );
//   }
// }
//
