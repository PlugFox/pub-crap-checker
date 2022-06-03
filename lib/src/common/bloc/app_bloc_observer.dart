import 'package:injectable/injectable.dart';
import 'package:l/l.dart';
import 'package:stream_bloc/stream_bloc.dart';

@Singleton()
class AppBlocObserver extends StreamBlocObserver {
  @override
  void onCreate(Closable closable) {
    super.onCreate(closable);
    l.v6('Create: $closable');
  }

  @override
  void onEvent(BlocEventSink eventSink, Object? event) {
    super.onEvent(eventSink, event);
    l.v6('Event: $event');
  }

  @override
  void onChange(StateStreamable stateStreamable, Change change) {
    super.onChange(stateStreamable, change);
    l.v6('Change: ${change.currentState} -> ${change.nextState}');
  }

  /*
  @override
  void onTransition(BlocEventSink bloc, Transition transition) {
    super.onTransition(bloc, transition);
  }
  */

  @override
  void onError(ErrorSink errorSink, Object error, StackTrace stackTrace) {
    super.onError(errorSink, error, stackTrace);
    l.e('Error: $error', stackTrace);
  }

  @override
  void onClose(Closable closable) {
    super.onClose(closable);
    l.v6('Close: $closable');
  }
}
