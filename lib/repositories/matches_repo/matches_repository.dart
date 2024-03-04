import 'package:diplomka/entities/match_entity.dart';
import 'package:diplomka/entities/team_entity.dart';

abstract interface class MatchesRepository {
  getMatches() {}
  createMatch(TeamEntity team1, TeamEntity team2, int matchId) {}
  updateScorePlus(TeamEntity team, MatchEntity match) {}
  updateScoreMinus(TeamEntity team, MatchEntity match) {}
}
