import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:l/l.dart';

import 'src/app.dart';
import 'src/app_error.dart';
import 'src/common/initialization/initialization.dart';

void main() => runZonedGuarded<Future<void>>(
      () => l.capture(
        () => initializeApp(
          onSuccess: (container) {
            runApp(const App());
          },
          onError: (error, stackTrace) {
            runApp(AppError(error: error, stackTrace: stackTrace));
          },
        ),
        const LogOptions(
          handlePrint: true,
          outputInRelease: true,
          printColors: true,
        ),
      ),
      l.e,
    );
