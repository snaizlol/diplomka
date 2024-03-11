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
  String pubImage;
  List<String> tableImages;

  PubEntity({
    required this.id,
    required this.name,
    required this.adress,
    required this.rating,
    required this.cooks,
    required this.beers,
    required this.fotbalek,
    required this.pubImage,
    required this.tableImages,
  });
}
