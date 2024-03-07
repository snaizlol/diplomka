import 'package:diplomka/cubit/match_detail_cubit/match_detail_state.dart';
import 'package:diplomka/entities/match_entity.dart';
import 'package:diplomka/repositories/matches_repo/matches_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MatchDetailCubit extends Cubit<MatchDetailState> {
  MatchDetailCubit(this.repo) : super(MatchDetailLoading());
  MatchesRepository repo;
  load(int id) {
    emit(MatchDetailLoading());

    final MatchEntity getMatchInfo = repo.getMatchById(id);
    print(
        'matchmatchmatchmatch ${getMatchInfo.matchId}  ${getMatchInfo.teamOne}');
    emit(MatchDetailLoaded(
        matchInfo: getMatchInfo,
        teamOneWins: getMatchInfo.teamOneGamesWon,
        teamTwoWins: getMatchInfo.teamTwoGamesWon));
  }

  addWin(int id, int team) {
    final MatchEntity getMatchInfo = repo.getMatchById(id);
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

  removeWin(int id, int team) {
    final MatchEntity getMatchInfo = repo.getMatchById(id);
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
}
