import 'package:diplomka/entities/match_entity.dart';

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
