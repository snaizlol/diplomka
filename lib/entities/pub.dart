import 'package:diplomka/entities/article.dart';
import 'package:diplomka/entities/foosball.dart';
import 'package:diplomka/entities/beer.dart';

class Pub {
  String name;
  int id;
  String adress;
  double rating;
  bool? cooks;
  List<Beer> beers;
  Foosball foosball;
  String pubImage;
  List<String> tableImages;
  List<Article> pubNews;

  Pub({
    required this.id,
    required this.name,
    required this.adress,
    required this.rating,
    required this.cooks,
    required this.beers,
    required this.foosball,
    required this.pubImage,
    required this.tableImages,
    required this.pubNews,
  });
}
