import 'package:diplomka/entities/match_entity.dart';
import 'package:diplomka/entities/team_entity.dart';
import 'package:diplomka/repositories/fotbalkee_repo/mockup_pubs.dart';
import 'package:diplomka/repositories/matches_repo/matches_repository.dart';
import 'package:diplomka/repositories/matches_repo/mockup_matches.dart';

class MatchRepositoryImplementation implements MatchesRepository {
  MatchRepositoryImplementation(
      this.matchesMockupRepository, this.pubMockupRepository);

  final MatchesMockupRepository matchesMockupRepository;
  final PubMockupRepository pubMockupRepository;

  @override
  updateScoreMinus(String id, int teamNumber) {
    final getMatch =
        matchesMockupRepository.list.where((element) => element.matchId == id);

    if (teamNumber == 1) {
      getMatch.first.teamOneGamesWon--;
    } else {
      getMatch.first.teamTwoGamesWon--;
    }
  }

  @override
  updateScorePlus(String id, int teamNumber) {
    final getMatch =
        matchesMockupRepository.list.where((element) => element.matchId == id);

    if (teamNumber == 1) {
      getMatch.first.teamOneGamesWon++;
    } else {
      getMatch.first.teamTwoGamesWon++;
    }
  }

  @override
  createMatch(TeamEntity team1, TeamEntity team2, String matchId, int pubId) {
    final pub = PubMockupRepository.listOfPubs
        .where((element) => element.id == pubId)
        .first;

    matchesMockupRepository.list.add(
      MatchEntity(
          teamOne: team1,
          matchId: matchId,
          teamOneGamesWon: 0,
          teamTwo: team2,
          teamTwoGamesWon: 0,
          pub: pub),
    );
  }

  @override
  getMatches() {
    return matchesMockupRepository.list;
  }

  @override
  getMatchById(String id) {
    final getMatch = matchesMockupRepository.list
        .where((element) => element.matchId == id)
        .first;
    return getMatch;
  }

  @override
  deleteMatch(String id) {
    matchesMockupRepository.list
        .removeWhere((element) => element.matchId == id);
  }
}
