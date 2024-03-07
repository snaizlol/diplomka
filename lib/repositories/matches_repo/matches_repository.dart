import 'package:diplomka/entities/team_entity.dart';

abstract interface class MatchesRepository {
  getMatches() {}
  getMatchById(int id) {}
  createMatch(TeamEntity team1, TeamEntity team2, int matchId) {}
  updateScorePlus(int id, int teamNumber) {}
  updateScoreMinus(int id, int teamNumber) {}
}
