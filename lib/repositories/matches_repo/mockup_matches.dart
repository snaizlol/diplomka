import 'package:diplomka/entities/match.dart';
import 'package:diplomka/entities/team.dart';
import 'package:diplomka/repositories/pubs_repo/mockup_pubs.dart';

class MatchesMockupRepository {
  MatchesMockupRepository(this.pubMockupRepository);
  final PubMockupRepository pubMockupRepository;
  List<Match> list = [
    Match(
        teamOne: Team(
          teamName: 'Team 1',
          playerOneName: 'Player 1',
          playerTwoName: 'Player 2',
        ),
        matchId: '0',
        teamOneGamesWon: 3,
        teamTwo: Team(
          teamName: 'Team 2',
          playerOneName: 'Player 1',
          playerTwoName: 'Player 2',
        ),
        pub: PubMockupRepository.listOfPubs[0],
        teamTwoGamesWon: 2),
    Match(
      pub: PubMockupRepository.listOfPubs[0],
      teamOne: Team(
        teamName: 'Team 1',
        playerOneName: 'Player 1',
        playerTwoName: 'Player 2',
      ),
      matchId: '1',
      teamOneGamesWon: 1,
      teamTwo: Team(
        teamName: 'Team 2',
        playerOneName: 'Player 1',
        playerTwoName: 'Player 2',
      ),
      teamTwoGamesWon: 1,
    ),
    Match(
      pub: PubMockupRepository.listOfPubs[0],
      teamOne: Team(
        teamName: 'Team 1',
        playerOneName: 'Player 1',
        playerTwoName: 'Player 2',
      ),
      matchId: '2',
      teamOneGamesWon: 4,
      teamTwo: Team(
        teamName: 'Team 2',
        playerOneName: 'Player 1',
        playerTwoName: 'Player 2',
      ),
      teamTwoGamesWon: 3,
    ),
  ];
}
