import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../home/home_page.dart';
import '../login/presentation/pages/google_login_page.dart';

GoRouter goRouter() {
  return GoRouter(initialLocation: '/', routes: [
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const GoogleLoginPage();
        }),
    GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        })
  ]);
}
