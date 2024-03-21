import 'package:diplomka/entities/di.dart';
import 'package:diplomka/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

void main() {
  group('Integration test', () {
    patrolTest('create match', ($) async {
      await register();
      await $.pumpWidgetAndSettle(
        const MainApp(),
      );
      //move to scoreboard page
      await $('Scoreboard').tap();
      await $.pumpAndSettle();
      // tap on create button
      await $(FloatingActionButton).tap();
      await $.pumpAndSettle();
      // filling forms for team 1
      await $(#teamOneName).enterText('Team1 New');
      await $.pumpAndSettle();
      await $(#teamOnePlayer1).enterText('P1');
      await $.pumpAndSettle();
      await $(#teamOnePlayer2).enterText('P2');
      await $.pumpAndSettle();
      // filling forms for team 2
      await $(#teamTwoName).enterText('Team2 New');
      await $.pumpAndSettle();
      await $(#teamTwoPlayer1).enterText('P1');
      await $.pumpAndSettle();
      await $(#teamTwoPlayer2).enterText('P1');
      await $.pumpAndSettle();
      // find elevated button
      await $(ElevatedButton).tap();
      await $.pumpAndSettle();
      expect($('Team1 New'), findsOneWidget);
      await $('Team1 New').tap();
      await $.pumpAndSettle();
      expect($('Match info'), findsOneWidget);
    });
  });
}
