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
      pubImages: [
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fklubovna.povalec.cz%2Fo-klubovne&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAE',
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.smsticket.cz%2Fmista%2F1451-klubovna-praha&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAI',
      ],
      tableImages: [
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fklubovna.povalec.cz%2Fo-klubovne&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAQ'
      ],
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
      pubImages: [
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fklubovna.povalec.cz%2Fo-klubovne&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAE',
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.smsticket.cz%2Fmista%2F1451-klubovna-praha&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAI',
      ],
      tableImages: [
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fklubovna.povalec.cz%2Fo-klubovne&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAQ'
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
      pubImages: [
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fklubovna.povalec.cz%2Fo-klubovne&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAE',
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.smsticket.cz%2Fmista%2F1451-klubovna-praha&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAI',
      ],
      tableImages: [
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fklubovna.povalec.cz%2Fo-klubovne&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAQ'
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
      pubImages: [
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fklubovna.povalec.cz%2Fo-klubovne&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAE',
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.smsticket.cz%2Fmista%2F1451-klubovna-praha&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAI',
      ],
      tableImages: [
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fklubovna.povalec.cz%2Fo-klubovne&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAQ'
      ],
      beers: [BeerEntity(price: 40, name: 'Kozel')],
      fotbalek: FotbalekEntity(brand: 'Leonhaart', rating: 4, isFree: false),
    ),
    PubEntity(
      id: 4,
      name: 'Zazemi',
      adress: 'Michalska',
      rating: 2,
      pubImages: [
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fklubovna.povalec.cz%2Fo-klubovne&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAE',
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.smsticket.cz%2Fmista%2F1451-klubovna-praha&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAI',
      ],
      tableImages: [
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fklubovna.povalec.cz%2Fo-klubovne&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAQ'
      ],
      cooks: false,
      beers: [BeerEntity(price: 40, name: 'Kozel')],
      fotbalek: FotbalekEntity(brand: 'Leonhaart', rating: 4, isFree: false),
    ),
    PubEntity(
      id: 5,
      name: 'U dvou skoku',
      adress: 'Bartlomejska',
      rating: 4,
      cooks: false,
      pubImages: [
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fklubovna.povalec.cz%2Fo-klubovne&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAE',
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.smsticket.cz%2Fmista%2F1451-klubovna-praha&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAI',
      ],
      tableImages: [
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fklubovna.povalec.cz%2Fo-klubovne&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAQ'
      ],
      beers: [BeerEntity(price: 40, name: 'Kozel')],
      fotbalek: FotbalekEntity(brand: 'Garlando', rating: 4, isFree: false),
    ),
    PubEntity(
      id: 5,
      name: 'Tovarna',
      adress: 'Bartlomejska',
      pubImages: [
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fklubovna.povalec.cz%2Fo-klubovne&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAE',
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.smsticket.cz%2Fmista%2F1451-klubovna-praha&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAI',
      ],
      tableImages: [
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fklubovna.povalec.cz%2Fo-klubovne&psig=AOvVaw3Jc7pPCv1YIA8TCXwlXwBb&ust=1710071213820000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPiR1OuN54QDFQAAAAAdAAAAABAQ'
      ],
      rating: 4,
      cooks: false,
      beers: [BeerEntity(price: 40, name: 'Kozel')],
      fotbalek:
          FotbalekEntity(brand: 'Roberto Sport', rating: 4, isFree: false),
    ),
  ];
}
