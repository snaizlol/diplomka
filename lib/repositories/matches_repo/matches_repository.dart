import 'package:diplomka/entities/team.dart';

abstract interface class MatchesRepository {
  getMatches() {}
  getMatchById(String id) {}
  createMatch(Team team1, Team team2, String matchId, int pubId) {}
  updateScorePlus(String id, int teamNumber) {}
  updateScoreMinus(String id, int teamNumber) {}
  deleteMatch(String id) {}
}
