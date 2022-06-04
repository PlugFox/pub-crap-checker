//import 'dart:html' as html;
import 'dart:js' as js;

//import 'dart:js_util' as js_util;

//import 'package:js/js.dart';
//import 'package:meta/meta.dart';

Future<void> platformAfterInitialization() async {
  _removeSplashFromWeb();
}

void _removeSplashFromWeb() => js.context.callMethod('removeSplashFromWeb');
