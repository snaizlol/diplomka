import 'package:diplomka/entities/match_entity.dart';
import 'package:diplomka/entities/team_entity.dart';

class MatchesMockupRepository {
  List<MatchEntity> list = [
    MatchEntity(
        teamOne: TeamEntity(
            teamName: 'Team 1',
            playerOneName: 'Michal',
            playerTwoName: 'Patrik'),
        matchId: '0',
        teamOneGamesWon: 3,
        teamTwo: TeamEntity(
          teamName: 'Team 2',
          playerOneName: 'Kristian',
          playerTwoName: 'Tomas',
        ),
        teamTwoGamesWon: 2),
    MatchEntity(
        teamOne: TeamEntity(
          teamName: 'Marvel',
          playerOneName: 'Nemam rad',
          playerTwoName: 'Marvel',
        ),
        matchId: '1',
        teamOneGamesWon: 1,
        teamTwo: TeamEntity(
            teamName: 'D.C.',
            playerOneName: 'Batman je',
            playerTwoName: 'Hero'),
        teamTwoGamesWon: 1),
  ];
}
