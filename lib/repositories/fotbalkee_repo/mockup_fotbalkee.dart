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
      pubImages: [],
      tableImages: ['assets/images/plzenka.jpeg', 'assets/images/dasen.jpeg'],
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
      pubImages: [],
      tableImages: [
        'assets/images/u_sadu_3.jpeg',
        'assets/images/u_sadu_4.jpeg'
      ],
      beers: [BeerEntity(price: 40, name: 'Kozel')],
      fotbalek: FotbalekEntity(brand: 'Leonhaart', rating: 4, isFree: false),
    ),
    PubEntity(
      id: 2,
      name: 'Woodoo',
      adress: 'Zizkovska',
      rating: 2,
      cooks: true,
      pubImages: [],
      tableImages: [
        'assets/images/woodoo.jpeg',
        'assets/images/woodoo_2.jpeg',
        'assets/images/woodoo_3.jpeg',
        'assets/images/woodoo_4.jpeg'
      ],
      beers: [BeerEntity(price: 40, name: 'Kozel')],
      fotbalek: FotbalekEntity(brand: 'Leonhaart', rating: 4, isFree: false),
    ),
    PubEntity(
      id: 3,
      name: 'Oaza',
      adress: 'Thakurova',
      rating: 2,
      cooks: false,
      pubImages: [],
      tableImages: [
        'assets/images/oaza.jpeg',
        'assets/images/oaza_2.jpeg',
        'assets/images/oaza_3.jpeg',
        'assets/images/oaza_4.jpeg'
      ],
      beers: [BeerEntity(price: 40, name: 'Kozel')],
      fotbalek: FotbalekEntity(brand: 'Leonhaart', rating: 4, isFree: false),
    ),
    PubEntity(
      id: 4,
      name: 'Zazemi',
      adress: 'Michalska',
      rating: 2,
      pubImages: [],
      tableImages: ['assets/images/zazemi.jpeg', 'assets/images/zazemi_2.jpeg'],
      cooks: false,
      beers: [BeerEntity(price: 40, name: 'Kozel')],
      fotbalek: FotbalekEntity(brand: 'Leonhaart', rating: 4, isFree: false),
    ),
    PubEntity(
      id: 5,
      name: 'Plzenka',
      adress: 'Hermanova',
      rating: 4,
      cooks: false,
      pubImages: [],
      tableImages: [
        'assets/images/plzenka.jpeg',
        'assets/images/plzenka_2.jpeg',
      ],
      beers: [BeerEntity(price: 40, name: 'Kozel')],
      fotbalek: FotbalekEntity(brand: 'Garlando', rating: 4, isFree: false),
    ),
    PubEntity(
      id: 6,
      name: 'Famu',
      adress: 'Smetanovo nabrezi 2',
      pubImages: [],
      tableImages: ['assets/images/famu.jpeg', 'assets/images/famu2.jpeg'],
      rating: 4,
      cooks: false,
      beers: [BeerEntity(price: 40, name: 'Hubertus')],
      fotbalek:
          FotbalekEntity(brand: 'Roberto Sport', rating: 4, isFree: false),
    ),
    PubEntity(
      id: 7,
      name: 'Nadrazka',
      adress: 'Dejvicka',
      pubImages: [],
      tableImages: [
        'assets/images/nadrazka.jpeg',
        'assets/images/nadrazka_2.jpeg'
      ],
      rating: 4,
      cooks: false,
      beers: [
        BeerEntity(price: 59, name: 'Plzen'),
        BeerEntity(price: 40, name: 'Staropramen')
      ],
      fotbalek:
          FotbalekEntity(brand: 'Roberto Sport', rating: 4, isFree: false),
    ),
    PubEntity(
      id: 8,
      name: 'Vecernice',
      adress: 'Ovenecka',
      pubImages: [],
      tableImages: [
        'assets/images/vecernice.jpeg',
        'assets/images/vecernice_2.jpeg',
        'assets/images/vecernice_3.jpeg',
        'assets/images/vecernice_4.jpeg'
      ],
      rating: 4,
      cooks: false,
      beers: [
        BeerEntity(price: 59, name: 'Plzen'),
        BeerEntity(price: 40, name: 'Staropramen')
      ],
      fotbalek:
          FotbalekEntity(brand: 'Roberto Sport', rating: 4, isFree: false),
    ),
    PubEntity(
      id: 9,
      name: 'U Sadu',
      adress: 'Skroupovo namesti',
      pubImages: [],
      tableImages: [
        'assets/images/u_sadu.jpeg',
        'assets/images/u_sadu_2.jpeg',
        'assets/images/u_sadu_3.jpeg',
        'assets/images/u_sadu_6.jpeg'
      ],
      rating: 4,
      cooks: false,
      beers: [
        BeerEntity(price: 59, name: 'Plzen'),
        BeerEntity(price: 60, name: 'Chric')
      ],
      fotbalek: FotbalekEntity(brand: 'Speedo sport', rating: 4, isFree: false),
    ),
  ];
}
