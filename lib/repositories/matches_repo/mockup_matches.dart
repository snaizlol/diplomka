import 'package:diplomka/entities/match_entity.dart';
import 'package:diplomka/entities/team_entity.dart';

class MatchesMockupRepository {
  List<MatchEntity> list = [
    MatchEntity(
        teamOne: TeamEntity(
          teamName: 'Team 1',
          playerOneName: 'Player 1',
          playerTwoName: 'Player 2',
        ),
        matchId: '0',
        teamOneGamesWon: 3,
        teamTwo: TeamEntity(
          teamName: 'Team 2',
          playerOneName: 'Player 1',
          playerTwoName: 'Player 2',
        ),
        teamTwoGamesWon: 2),
    MatchEntity(
      teamOne: TeamEntity(
        teamName: 'Team 1',
        playerOneName: 'Player 1',
        playerTwoName: 'Player 2',
      ),
      matchId: '1',
      teamOneGamesWon: 1,
      teamTwo: TeamEntity(
        teamName: 'Team 2',
        playerOneName: 'Player 1',
        playerTwoName: 'Player 2',
      ),
      teamTwoGamesWon: 1,
    ),
    MatchEntity(
      teamOne: TeamEntity(
        teamName: 'Team 1',
        playerOneName: 'Player 1',
        playerTwoName: 'Player 2',
      ),
      matchId: '2',
      teamOneGamesWon: 4,
      teamTwo: TeamEntity(
        teamName: 'Team 2',
        playerOneName: 'Player 1',
        playerTwoName: 'Player 2',
      ),
      teamTwoGamesWon: 3,
    ),
  ];
}
