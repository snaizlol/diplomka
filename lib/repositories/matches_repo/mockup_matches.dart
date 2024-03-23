import 'package:diplomka/entities/match_entity.dart';
import 'package:diplomka/entities/team_entity.dart';
import 'package:diplomka/repositories/fotbalkee_repo/mockup_pubs.dart';

class MatchesMockupRepository {
  MatchesMockupRepository(this.pubMockupRepository);
  final PubMockupRepository pubMockupRepository;
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
        pub: PubMockupRepository.listOfPubs[0],
        teamTwoGamesWon: 2),
    MatchEntity(
      pub: PubMockupRepository.listOfPubs[0],
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
      pub: PubMockupRepository.listOfPubs[0],
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
