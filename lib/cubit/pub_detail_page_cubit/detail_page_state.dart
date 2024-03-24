import 'package:diplomka/entities/foosball.dart';
import 'package:diplomka/entities/pub.dart';

class DetailPageState {
  DetailPageState({required this.id, required this.pub});
  final int id;
  final Pub pub;
}

class DetailPageStateLoading extends DetailPageState {
  DetailPageStateLoading()
      : super(
          id: 0,
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
        );
}

class DetailPageStateLoaded extends DetailPageState {
  DetailPageStateLoaded({
    required super.id,
    required super.pub,
  });
}
