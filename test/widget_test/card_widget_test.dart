import 'package:diplomka/components/fotbalkee_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'CardWidget displays correctly with all of its values',
    (WidgetTester tester) async {
      const String name = 'New Pub';
      const double rating = 4.0;
      const String address = 'NewPubAdress 1';
      const String imageUrl = '';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CardWidget(
              name: name,
              rating: rating,
              adress: address,
              index: 0,
              imageUrl: imageUrl,
              callback: () {},
            ),
          ),
        ),
      );

      expect(find.text(name), findsOneWidget);
      expect(find.text(address), findsOneWidget);
      expect(find.text(rating.toString()), findsOneWidget);
      expect(find.byType(Image), findsOneWidget);
    },
  );
}
