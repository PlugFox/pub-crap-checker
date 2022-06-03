import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../feature/dashboard/widget/dashboard_screen.dart';

part 'routes.g.dart';

/// HomeRoute
@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
  HomeRoute();

  @override
  String? redirect() => '/dashboard';
}

/// DashboardRoute
@TypedGoRoute<DashboardRoute>(path: '/dashboard')
class DashboardRoute extends GoRouteData {
  DashboardRoute();

  @override
  Widget build(BuildContext context) => const DashboardScreen();
}

@TypedGoRoute<AuthenticationRoute>(path: '/authentication')
class AuthenticationRoute extends GoRouteData {
  AuthenticationRoute();

  @override
  Widget build(BuildContext context) => const DashboardScreen();
}
