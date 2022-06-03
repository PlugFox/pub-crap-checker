import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pub_crap_checker/src/app.dart';

void main() {
  testWidgets('MaterialApp exist', (tester) async {
    await tester.pumpWidget(const App());
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
