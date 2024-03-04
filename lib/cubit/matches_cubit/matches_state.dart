import 'package:diplomka/entities/match_entity.dart';
import 'package:diplomka/repositories/matches_repo/matches_repository.dart';

class MatchState {
  MatchState({required this.list});
  List<MatchEntity> list;
}

class MatchStateLoading extends MatchState {
  MatchStateLoading() : super(list: []);
}

class MatchStateLoaded extends MatchState {
  MatchStateLoaded({required super.list});
}
