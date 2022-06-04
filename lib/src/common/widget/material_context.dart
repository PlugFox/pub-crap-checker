import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../feature/dashboard/widget/dashboard_screen.dart';

/// {@template material_context}
/// MaterialContext widget
/// {@endtemplate}
class MaterialContext extends StatelessWidget {
  /// {@macro material_context}
  const MaterialContext({
    super.key,
  });

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Pub Checker',
        restorationScopeId: 'app',
        home: const DashboardScreen(),
        theme: ThemeData.light(),
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          //AppLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const <Locale>[
          Locale('en', 'US'),
        ],
        locale: const Locale('en', 'US'),
        //scaffoldMessengerKey: GetIt.instance<GlobalKey<ScaffoldMessengerState>>(),
      );

  /*
  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationParser: AppRouter.instance().routeInformationParser,
        routerDelegate: AppRouter.instance().routerDelegate,
        title: 'Pub Checker',
        restorationScopeId: 'app',
        theme: ThemeData.light(),
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          //AppLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const <Locale>[Locale('en', 'US')],
        locale: const Locale('en', 'US'),
        //scaffoldMessengerKey: GetIt.instance<GlobalKey<ScaffoldMessengerState>>(),
      );
  */
} // MaterialContext
