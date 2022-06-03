import 'package:flutter/material.dart';

import 'app.dart';

/// {@template app_error}
/// AppError widget
/// {@endtemplate}
class AppError extends App {
  /// {@macro app_error}
  const AppError({
    this.error,
    this.stackTrace,
    super.key,
  });

  /// Error
  final Object? error;

  /// Stack trace
  final StackTrace? stackTrace;

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Error',
        home: Scaffold(
          body: Center(
            child: Center(
              child: Text(error?.toString() ?? 'Unknown error'),
            ),
          ),
        ),
      );
} // AppError
