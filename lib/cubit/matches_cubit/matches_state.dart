import 'package:diplomka/entities/match.dart';

class MatchState {
  MatchState({required this.list});
  List<Match> list;
}

class MatchStateLoading extends MatchState {
  MatchStateLoading() : super(list: []);
}

class MatchStateLoaded extends MatchState {
  MatchStateLoaded({required super.list});
}
