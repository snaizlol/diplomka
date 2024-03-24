import 'package:diplomka/cubit/match_detail_cubit/match_detail_state.dart';
import 'package:diplomka/entities/match.dart';
import 'package:diplomka/repositories/matches_repo/matches_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MatchDetailCubit extends Cubit<MatchDetailState> {
  MatchDetailCubit(this.repo) : super(MatchDetailLoading());
  MatchesRepository repo;
  load(String id) {
    emit(MatchDetailLoading());

    final Match getMatchInfo = repo.getMatchById(id);

    emit(MatchDetailLoaded(
        matchInfo: getMatchInfo,
        teamOneWins: getMatchInfo.teamOneGamesWon,
        teamTwoWins: getMatchInfo.teamTwoGamesWon));
  }

  addWin(String id, int team) {
    final Match getMatchInfo = repo.getMatchById(id);
    if (team == 1) {
      repo.updateScorePlus(id, team);
      state.teamOneWins++;
      emit(MatchDetailLoaded(
          matchInfo: getMatchInfo,
          teamOneWins: state.teamOneWins,
          teamTwoWins: state.teamTwoWins));
    } else {
      repo.updateScorePlus(id, team);
      state.teamTwoWins++;
      emit(MatchDetailLoaded(
          matchInfo: getMatchInfo,
          teamOneWins: state.teamOneWins,
          teamTwoWins: state.teamTwoWins));
    }
  }

  removeWin(String id, int team) {
    final Match getMatchInfo = repo.getMatchById(id);
    if (team == 1) {
      if (getMatchInfo.teamOneGamesWon > 0) {
        repo.updateScoreMinus(id, team);
        state.teamOneWins--;
        emit(MatchDetailLoaded(
            matchInfo: getMatchInfo,
            teamOneWins: state.teamOneWins,
            teamTwoWins: state.teamTwoWins));
      }
    } else {
      if (getMatchInfo.teamTwoGamesWon > 0) {
        repo.updateScoreMinus(id, team);
        state.teamTwoWins--;
        emit(MatchDetailLoaded(
            matchInfo: getMatchInfo,
            teamOneWins: state.teamOneWins,
            teamTwoWins: state.teamTwoWins));
      }
    }
  }

  deleteMatch(String matchId) {
    repo.deleteMatch(matchId);
  }
}
