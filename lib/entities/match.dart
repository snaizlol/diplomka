import 'package:diplomka/entities/pub.dart';
import 'package:diplomka/entities/team.dart';

class Match {
  Match({
    required this.teamOne,
    required this.matchId,
    required this.teamOneGamesWon,
    required this.teamTwo,
    required this.teamTwoGamesWon,
    required this.pub,
  });
  int teamOneGamesWon;
  int teamTwoGamesWon;
  Team teamOne;
  Team teamTwo;
  String matchId;
  Pub pub;
}
