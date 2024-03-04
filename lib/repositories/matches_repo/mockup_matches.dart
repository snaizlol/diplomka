import 'package:diplomka/entities/match_entity.dart';
import 'package:diplomka/entities/team_entity.dart';

class MatchesMockupRepository {
  List<MatchEntity> list = [
    MatchEntity(
        teamOne: TeamEntity(
            teamName: 'Draci', playerOneName: 'Cert', playerTwoName: 'Patrik'),
        matchId: 0,
        teamOneGamesWon: 0,
        teamTwo: TeamEntity(
            teamName: 'Ptaci', playerOneName: 'Nekdo', playerTwoName: 'Neco'),
        teamTwoGamesWon: 0)
  ];
}
