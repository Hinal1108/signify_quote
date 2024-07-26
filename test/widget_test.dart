// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget buildTestableWidget(Widget widget) {
    return MaterialApp(
      home: widget,
    );
  }

  testWidgets('RatingBar test', (WidgetTester tester) async {
    RatingBarIndicator ratingBarIndicator = RatingBarIndicator(
      rating: 1,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          index + 1;
        },
        child: const Icon(
          Icons.star,
          color: Colors.amber,
        ),
      ),
      itemCount: 5,
      itemSize: 40.0,
      direction: Axis.horizontal,
      unratedColor: Colors.grey,
    );
    await tester.pumpWidget(buildTestableWidget(ratingBarIndicator));

    expect(find.byWidget(ratingBarIndicator), findsOneWidget);
  });
}
