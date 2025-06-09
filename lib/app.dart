import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio_flutter/core/widgets/responsive/responsive_layout.dart';
import 'package:my_portfolio_flutter/features/screens/desktop.dart';
import 'package:my_portfolio_flutter/router/router.dart';
import 'core/config/color_constants.dart' as constant_color;

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GoRouter router = ref.watch(goRouteProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: constant_color.backgroundScreenV3,
        fontFamily: 'Inter',
      ),
      routerConfig: router,
    );
  }
}
