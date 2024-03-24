import 'package:diplomka/entities/foosball.dart';
import 'package:diplomka/entities/match.dart';
import 'package:diplomka/entities/pub.dart';
import 'package:diplomka/entities/team.dart';

class MatchDetailState {
  MatchDetailState(
      {required this.matchInfo,
      required this.teamOneWins,
      required this.teamTwoWins});
  Match matchInfo;
  int teamOneWins;
  int teamTwoWins;
}

class MatchDetailLoading extends MatchDetailState {
  MatchDetailLoading()
      : super(
          matchInfo: Match(
            pub: Pub(
              id: 0,
              name: '',
              adress: '',
              rating: 0,
              pubImage: '',
              tableImages: [],
              cooks: false,
              beers: [],
              pubNews: [],
              foosball: Foosball(brand: '', rating: 0, isFree: false),
            ),
            teamOne: Team(teamName: '', playerOneName: '', playerTwoName: ''),
            matchId: '0',
            teamOneGamesWon: 0,
            teamTwo: Team(teamName: '', playerOneName: '', playerTwoName: ''),
            teamTwoGamesWon: 0,
          ),
          teamOneWins: 0,
          teamTwoWins: 0,
        );
}

class MatchDetailLoaded extends MatchDetailState {
  MatchDetailLoaded(
      {required super.matchInfo,
      required super.teamOneWins,
      required super.teamTwoWins});
}

class TeamOneScores extends MatchDetailState {
  TeamOneScores({required super.teamOneWins, required super.teamTwoWins})
      : super(
          matchInfo: Match(
            pub: Pub(
              id: 0,
              name: '',
              adress: '',
              rating: 0,
              pubImage: '',
              tableImages: [],
              cooks: false,
              beers: [],
              pubNews: [],
              foosball: Foosball(brand: '', rating: 0, isFree: false),
            ),
            teamOne: Team(teamName: '', playerOneName: '', playerTwoName: ''),
            matchId: '0',
            teamOneGamesWon: 0,
            teamTwo: Team(teamName: '', playerOneName: '', playerTwoName: ''),
            teamTwoGamesWon: 0,
          ),
        );
}
