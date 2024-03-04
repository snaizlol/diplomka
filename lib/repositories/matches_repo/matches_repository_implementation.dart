import 'package:diplomka/entities/match_entity.dart';
import 'package:diplomka/entities/team_entity.dart';
import 'package:diplomka/repositories/matches_repo/matches_repository.dart';
import 'package:diplomka/repositories/matches_repo/mockup_matches.dart';

class MatchRepositoryImplementation implements MatchesRepository {
  MatchRepositoryImplementation(this.repo);

  final MatchesMockupRepository repo;

  @override
  updateScoreMinus(TeamEntity team, MatchEntity match) {}

  @override
  updateScorePlus(TeamEntity team, MatchEntity match) {}

  @override
  createMatch(TeamEntity team1, TeamEntity team2, int matchId) {
    print('TEAMMMMMMMM${team1.playerOneName}');
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
}
