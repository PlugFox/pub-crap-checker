import 'package:flutter/material.dart';

import 'common/widget/material_context.dart';

/// {@template app}
/// App widget
/// {@endtemplate}
class App extends StatelessWidget {
  /// {@macro app}
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) => const MaterialContext();
} // App
