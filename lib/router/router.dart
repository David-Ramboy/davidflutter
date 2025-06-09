import 'package:flutter/material.dart';
import 'package:my_portfolio_flutter/features/hero/presentation/desktop_home.dart';
import 'package:my_portfolio_flutter/features/screens/desktop.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

List<GoRoute> get routes => [
      GoRoute(
        path: '/',
        name: 'home',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const DesktopBody(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.ease).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
    ];

@riverpod
GoRouter goRoute(GoRouteRef ref) {
  return GoRouter(
    routes: routes,
    initialLocation: '/',
    errorBuilder: (context, state) => Container(),
  );
}
