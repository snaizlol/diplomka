import 'package:diplomka/entities/fotbalek_entity.dart';
import 'package:diplomka/entities/pub_entity.dart';
import 'package:diplomka/entities/table_entity.dart';

class PubMockupRepository {
  List<PubEntity> listOfPubs = [
    PubEntity(
      name: 'Klubovna',
      adress: 'General',
      rating: 4,
      cooks: true,
      beers: [BeerEntity(price: 40, name: 'Kozel')],
      fotbalek: FotbalekEntity(brand: 'Rosengaart', rating: 4, isFree: false),
    ),
    PubEntity(
      name: 'Klubovna',
      adress: 'General',
      rating: 4,
      cooks: true,
      beers: [BeerEntity(price: 40, name: 'Kozel')],
      fotbalek: FotbalekEntity(brand: 'Rosengaart', rating: 4, isFree: false),
    ),
  ];

  addPub(PubEntity entity) {
    listOfPubs.add(entity);
  }
}
