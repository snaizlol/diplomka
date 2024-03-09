import 'package:diplomka/entities/team_entity.dart';

abstract interface class MatchesRepository {
  getMatches() {}
  getMatchById(String id) {}
  createMatch(TeamEntity team1, TeamEntity team2, String matchId) {}
  updateScorePlus(String id, int teamNumber) {}
  updateScoreMinus(String id, int teamNumber) {}
  deleteMatch(String id) {}
}
