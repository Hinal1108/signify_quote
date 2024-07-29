// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:signify_quote/quote.dart';
import 'package:signify_quote/utils/constants.dart';

void main() {
  Widget buildTestableWidget(Widget widget) {
    return MaterialApp(
      home: widget,
    );
  }

  testWidgets('Text test', (WidgetTester tester) async {
    CustomText customFavourite = const CustomText(
      text: 'Good Morning',
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: 27,
        fontFamily: 'monospace',
      ),
    );
    await tester.pumpWidget(buildTestableWidget(customFavourite));

    expect(find.byKey(Constants.valueTextKey), findsOneWidget);
  });

  testWidgets('Text test', (WidgetTester tester) async {
    CustomText customFavourite = const CustomText(
      text: 'Leo Tolstoy',
      textStyle: TextStyle(
        fontSize: 20,
        color: Colors.black87,
        fontFamily: 'serif',
      ),
    );
    await tester.pumpWidget(buildTestableWidget(customFavourite));

    expect(find.byKey(Constants.valueTextKey), findsOneWidget);
  });
}
