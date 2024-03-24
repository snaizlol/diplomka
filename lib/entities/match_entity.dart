import 'package:diplomka/entities/pub_entity.dart';
import 'package:diplomka/entities/team_entity.dart';

class MatchEntity {
  MatchEntity({
    required this.teamOne,
    required this.matchId,
    required this.teamOneGamesWon,
    required this.teamTwo,
    required this.teamTwoGamesWon,
    required this.pub,
  });
  int teamOneGamesWon;
  int teamTwoGamesWon;
  TeamEntity teamOne;
  TeamEntity teamTwo;
  String matchId;
  PubEntity pub;
}
