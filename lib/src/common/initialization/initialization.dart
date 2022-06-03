import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:l/l.dart';
import 'package:stream_bloc/stream_bloc.dart';

import '../bloc/app_bloc_observer.dart';
import '../constant/deployment_environment.dart';
import '../constant/firebase_options.g.dart';
import 'initialization.config.dart';

@InjectableInit(
  asExtension: true,
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  usesNullSafety: true,
)
Future<void> initializeApp({
  GetIt? container,
  String? environment,
  void Function(GetIt container)? onSuccess,
  void Function(Object error, StackTrace stackTrace)? onError,
}) async {
  late final WidgetsBinding binding;
  try {
    l.d('_initializeApp');
    binding = WidgetsFlutterBinding.ensureInitialized()..deferFirstFrame();
    final result = container ?? GetIt.instance;
    await _firebaseInitilization(result);
    result.$initGetIt(
      environment: environment ?? DeploymentEnvironment.current,
    );
    await result.allReady(timeout: const Duration(seconds: 15));
    StreamBlocObserver.config = StreamBlocObserverConfig(
      observer: result<AppBlocObserver>(),
      prioritizedLocation: StreamBlocObserverLocation.static,
      shouldFallback: false,
    );
    l.i('Successfully initialized app');
    onSuccess?.call(result);
  } on Object catch (error, stackTrace) {
    onError?.call(error, stackTrace);
    rethrow;
  } finally {
    binding.addPostFrameCallback((_) {
      // Closes splash screen, and show the app layout.
      binding.allowFirstFrame();
      //final context = binding.renderViewElement;
    });
  }
}

Future<void> _firebaseInitilization(GetIt container) async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final authentication = FirebaseAuth.instance;
  final analytics = FirebaseAnalytics.instance;
  container
    ..registerSingleton<FirebaseAuth>(authentication)
    ..registerSingleton<FirebaseAnalytics>(analytics);
  await analytics.logAppOpen();
}
