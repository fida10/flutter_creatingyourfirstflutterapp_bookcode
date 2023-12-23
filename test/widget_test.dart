import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:creatingyourfirstflutterapp_bookcode/main.dart';

void main() {
  testWidgets('AppBar title should be Howdy!', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    // Find the Text widget in the AppBar.
    final appBarTitle = find.text('Howdy!');

    // Verify that the AppBar contains the specified text.
    expect(appBarTitle, findsOneWidget);

    /*
    Here, we have created a unit test
    This test tests the home pages app bar
    Specifically, it sees if the text of the app bar matches the expected text, 'Howdy!'
     */
  });
}
