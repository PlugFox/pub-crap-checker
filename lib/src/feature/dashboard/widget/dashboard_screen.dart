import 'package:flutter/material.dart';

/// {@template dashboard_screen}
/// DashboardScreen widget
/// {@endtemplate}
class DashboardScreen extends StatelessWidget {
  /// {@macro dashboard_screen}
  const DashboardScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
        ),
        body: const SafeArea(
          child: Center(
            child: Placeholder(),
          ),
        ),
      );
} // DashboardScreen
