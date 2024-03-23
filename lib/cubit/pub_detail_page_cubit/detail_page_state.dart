import 'package:diplomka/entities/fotbalek_entity.dart';
import 'package:diplomka/entities/pub_entity.dart';

class DetailPageState {
  DetailPageState({required this.id, required this.pub});
  final int id;
  final PubEntity pub;
}

class DetailPageStateLoading extends DetailPageState {
  DetailPageStateLoading()
      : super(
          id: 0,
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
        );
}

class DetailPageStateLoaded extends DetailPageState {
  DetailPageStateLoaded({
    required super.id,
    required super.pub,
  });
}
