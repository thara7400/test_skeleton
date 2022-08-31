import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MyWidget', () {
    testWidgets('should display a string of text', (WidgetTester tester) async {
      // Define a Widget
      const myWidget = MaterialApp(
        home: Scaffold(
          body: Text('Hello'),
        ),
      );

      // Build myWidget and trigger a frame.
      await tester.pumpWidget(myWidget);

      // Verify myWidget shows some text
      expect(find.byType(Text), findsOneWidget);

      // Create the Finders.
      final textFinder = find.text('Hello');
      // final failureTextFinder = find.text('world');

      // the Text widgets appear exactly once in the widget tree.
      expect(textFinder, findsOneWidget);
      // expect(failureTextFinder, findsOneWidget);
    });
  });
  group('MyWidget2', () {
    testWidgets('should display two string of text', (WidgetTester tester) async {
      // Define a Widget
      Widget myWidget = MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Hello'),
          ),
          body: const Text('world!'),
        ),
      );

      // Build myWidget and trigger a frame.
      await tester.pumpWidget(myWidget);

      // Verify myWidget shows some text
      expect(find.byType(Text), findsNWidgets(2));
    });
  });
}
