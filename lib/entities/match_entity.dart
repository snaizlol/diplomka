import 'package:diplomka/entities/team_entity.dart';

class MatchEntity {
  MatchEntity(
      {required this.teamOne,
      required this.matchId,
      required this.teamOneGamesWon,
      required this.teamTwo,
      required this.teamTwoGamesWon});
  int teamOneGamesWon;
  int teamTwoGamesWon;
  TeamEntity teamOne;
  TeamEntity teamTwo;
  int matchId;
}
