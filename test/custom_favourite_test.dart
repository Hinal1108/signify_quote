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

  testWidgets('Favourite test', (WidgetTester tester) async {
    AsyncSnapshot<QuoteFavState> snapshot = AsyncSnapshot.withData(
        ConnectionState.active, QuoteFavState(favState: true));
    CustomFavourite customFavourite = CustomFavourite(
      snapshot: snapshot,
    );
    await tester.pumpWidget(buildTestableWidget(customFavourite));

    expect(find.byKey(Constants.valueFavouriteKey), findsOneWidget);
  });
}
