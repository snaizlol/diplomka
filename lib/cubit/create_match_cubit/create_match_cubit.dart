import 'package:diplomka/cubit/create_match_cubit/create_match_state.dart';
import 'package:diplomka/entities/team_entity.dart';
import 'package:diplomka/repositories/matches_repo/matches_repository.dart';
import 'package:diplomka/repositories/matches_repo/mockup_matches.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

class CreateMatchCubit extends Cubit<CreateMatchState> {
  CreateMatchCubit(this.repo, this.mockupRepo) : super(CreateMatchLoading());

  MatchesRepository repo;
  MatchesMockupRepository mockupRepo;

  void load() {
    emit(CreateMatchLoading());
  }

  createMatch(TeamEntity teamOne, TeamEntity teamTwo) {
    const uuid = Uuid();
    final newId = uuid.v4();
    repo.createMatch(
      teamOne,
      teamTwo,
      newId,
    );
  }
}
