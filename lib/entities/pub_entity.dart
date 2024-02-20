import 'package:diplomka/entities/fotbalek_entity.dart';
import 'package:diplomka/entities/table_entity.dart';

class PubEntity {
  String name;
  int id;
  String adress;
  double rating;
  bool? cooks;
  List<BeerEntity> beers;
  FotbalekEntity fotbalek;

  PubEntity({
    required this.id,
    required this.name,
    required this.adress,
    required this.rating,
    required this.cooks,
    required this.beers,
    required this.fotbalek,
  });
}
