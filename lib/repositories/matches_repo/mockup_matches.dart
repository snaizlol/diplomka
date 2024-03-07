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
            teamName: 'Team 2', playerOneName: 'Dement', playerTwoName: 'Blb'),
        teamTwoGamesWon: 2),
    MatchEntity(
        teamOne: TeamEntity(
            teamName: 'Roboti', playerOneName: 'Cert', playerTwoName: 'aijwdw'),
        matchId: '1',
        teamOneGamesWon: 1,
        teamTwo: TeamEntity(
            teamName: 'Zviratka',
            playerOneName: 'Neco',
            playerTwoName: 'Jeden'),
        teamTwoGamesWon: 1),
  ];
}
