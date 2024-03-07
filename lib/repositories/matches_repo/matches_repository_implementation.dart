import 'package:diplomka/entities/match_entity.dart';
import 'package:diplomka/entities/team_entity.dart';
import 'package:diplomka/repositories/matches_repo/matches_repository.dart';
import 'package:diplomka/repositories/matches_repo/mockup_matches.dart';

class MatchRepositoryImplementation implements MatchesRepository {
  MatchRepositoryImplementation(this.repo);

  final MatchesMockupRepository repo;

  @override
  updateScoreMinus(int id, int teamNumber) {
    final getMatch = repo.list.where((element) => element.matchId == id);

    if (teamNumber == 1) {
      getMatch.first.teamOneGamesWon--;
    } else {
      getMatch.first.teamTwoGamesWon--;
    }
  }

  @override
  updateScorePlus(int id, int teamNumber) {
    final getMatch = repo.list.where((element) => element.matchId == id);

    if (teamNumber == 1) {
      getMatch.first.teamOneGamesWon++;
    } else {
      getMatch.first.teamTwoGamesWon++;
    }
  }

  @override
  createMatch(TeamEntity team1, TeamEntity team2, int matchId) {
    repo.list.add(
      MatchEntity(
        teamOne: team1,
        matchId: matchId,
        teamOneGamesWon: 0,
        teamTwo: team2,
        teamTwoGamesWon: 0,
      ),
    );
  }

  @override
  getMatches() {
    return repo.list;
  }

  @override
  getMatchById(int id) {
    final getMatch = repo.list.where((element) => element.matchId == id).first;
    return getMatch;
  }
}
