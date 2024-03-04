import 'package:diplomka/cubit/matches_cubit/matches_state.dart';
import 'package:diplomka/repositories/matches_repo/matches_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MatchCubit extends Cubit<MatchState> {
  MatchCubit(this.repo) : super(MatchStateLoading());

  MatchesRepository repo;

  load() {
    final matches = repo.getMatches();
    emit(MatchStateLoaded(list: matches));
  }
}
