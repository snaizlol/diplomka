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

  getPubById(int pubId) {
    if (pub.id == pubId) {
      return pub;
    } else {
      throw Exception('Pub with id $pubId not found in this match.');
    }
  }
}
