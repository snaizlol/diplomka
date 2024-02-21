import 'package:diplomka/entities/fotbalek_entity.dart';
import 'package:diplomka/entities/pub_entity.dart';
import 'package:diplomka/entities/table_entity.dart';

class PubMockupRepository {
  List<PubEntity> listOfPubs = [
    PubEntity(
      id: 0,
      name: 'Klubovna',
      adress: 'Generala Piky',
      rating: 4,
      cooks: true,
      beers: [
        BeerEntity(price: 40, name: 'Kacov'),
        BeerEntity(price: 50, name: 'Plzen'),
      ],
      fotbalek: FotbalekEntity(brand: 'Rosengaart', rating: 4, isFree: false),
    ),
    PubEntity(
      id: 1,
      name: 'Tecka',
      adress: 'Americka',
      rating: 2,
      cooks: false,
      beers: [BeerEntity(price: 40, name: 'Kozel')],
      fotbalek: FotbalekEntity(brand: 'Rosengaart', rating: 4, isFree: false),
    ),
    PubEntity(
      id: 1,
      name: 'Woodoo',
      adress: 'Zizkovska',
      rating: 2,
      cooks: true,
      beers: [BeerEntity(price: 40, name: 'Kozel')],
      fotbalek: FotbalekEntity(brand: 'Rosengaart', rating: 4, isFree: false),
    ),
    PubEntity(
      id: 1,
      name: 'Oaza',
      adress: 'Thakurova',
      rating: 2,
      cooks: false,
      beers: [BeerEntity(price: 40, name: 'Kozel')],
      fotbalek: FotbalekEntity(brand: 'Rosengaart', rating: 4, isFree: false),
    ),
    PubEntity(
      id: 1,
      name: 'Zazemi',
      adress: 'Michalska',
      rating: 2,
      cooks: false,
      beers: [BeerEntity(price: 40, name: 'Kozel')],
      fotbalek: FotbalekEntity(brand: 'Rosengaart', rating: 4, isFree: false),
    ),
    PubEntity(
      id: 1,
      name: 'Konev',
      adress: 'Bartlomejska',
      rating: 4,
      cooks: false,
      beers: [BeerEntity(price: 40, name: 'Kozel')],
      fotbalek: FotbalekEntity(brand: 'Rosengaart', rating: 4, isFree: false),
    ),
  ];

  addPub(PubEntity entity) {
    listOfPubs.add(entity);
  }
}
