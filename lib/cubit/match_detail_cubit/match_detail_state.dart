import 'package:diplomka/entities/fotbalek_entity.dart';
import 'package:diplomka/entities/match_entity.dart';
import 'package:diplomka/entities/pub_entity.dart';
import 'package:diplomka/entities/team_entity.dart';

class MatchDetailState {
  MatchDetailState(
      {required this.matchInfo,
      required this.teamOneWins,
      required this.teamTwoWins});
  MatchEntity matchInfo;
  int teamOneWins;
  int teamTwoWins;
}

class MatchDetailLoading extends MatchDetailState {
  MatchDetailLoading()
      : super(
          matchInfo: MatchEntity(
            pub: PubEntity(
              id: 0,
              name: '',
              adress: '',
              rating: 0,
              pubImage: '',
              tableImages: [],
              cooks: false,
              beers: [],
              pubNews: [],
              fotbalek: FotbalekEntity(brand: '', rating: 0, isFree: false),
            ),
            teamOne:
                TeamEntity(teamName: '', playerOneName: '', playerTwoName: ''),
            matchId: '0',
            teamOneGamesWon: 0,
            teamTwo:
                TeamEntity(teamName: '', playerOneName: '', playerTwoName: ''),
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
          matchInfo: MatchEntity(
            pub: PubEntity(
              id: 0,
              name: '',
              adress: '',
              rating: 0,
              pubImage: '',
              tableImages: [],
              cooks: false,
              beers: [],
              pubNews: [],
              fotbalek: FotbalekEntity(brand: '', rating: 0, isFree: false),
            ),
            teamOne:
                TeamEntity(teamName: '', playerOneName: '', playerTwoName: ''),
            matchId: '0',
            teamOneGamesWon: 0,
            teamTwo:
                TeamEntity(teamName: '', playerOneName: '', playerTwoName: ''),
            teamTwoGamesWon: 0,
          ),
        );
}
