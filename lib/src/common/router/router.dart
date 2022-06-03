import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:platform_info/platform_info.dart';

import 'guard.dart';
import 'routes.dart';

@Singleton()
class AppRouter {
  AppRouter._(GoRouter router) : _router = router;
  static AppRouter? _singleton;

  @factoryMethod
  factory AppRouter.instance() => _singleton ??= AppRouter._(_createGoRouter());

  static GoRouter _createGoRouter() {
    final guard = GoGuard();
    return GoRouter(
      routes: $appRoutes,
      restorationScopeId: 'app_router',
      redirectLimit: 5,
      observers: <NavigatorObserver>[],
      navigatorBuilder: (context, state, child) => child,
      urlPathStrategy: UrlPathStrategy.hash,
      debugLogDiagnostics: platform.buildMode.isDebug,
      routerNeglect: false,
      initialLocation: '/',
      refreshListenable: guard,
      redirect: guard,
      errorPageBuilder: null,
      errorBuilder: null,
    );
  }

  final GoRouter _router;

  RouteInformationParser<Uri> get routeInformationParser => _router.routeInformationParser;
  RouterDelegate<Uri> get routerDelegate => _router.routerDelegate;
  String get location => _router.location;

  void pop() => _router.pop();

  void home() => _router.go(HomeRoute().location);

  void dashboard() => _router.go(DashboardRoute().location);

  void authentication() => _router.go(AuthenticationRoute().location);
}
