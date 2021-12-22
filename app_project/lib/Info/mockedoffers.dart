import 'package:app_project/models/offers.dart';

class Info {
  static List<Offers> getMockedOffers() {
    return [
      Offers(
          name: 'Elden Ring Launch Edition',
          console: 'PS4, PS5, XBOX X, XBOX ONE, PC',
          price: '69.95€'),
      Offers(name: 'It Takes Two', console: 'PS4, PS5', price: '69.95€'),
      Offers(
          name: 'Halo Infinite', console: 'XBOX X, XBOX ONE', price: '69.95€'),
      Offers(
          name: 'Deaths Door',
          console: 'PS4, PS5, XBOX X, Nintendo Switch',
          price: '69.95€'),
      Offers(
          name: '	Genshin Impact', console: 'Nintendo Switch', price: '69.95€'),
      Offers(name: 'Deathloop', console: 'PC, PS5, XBOX ONE', price: '69.95€'),
      Offers(
          name: 'Forza Horizon 5',
          console: 'PS4, PS5, XBOX X, XBOX ONE',
          price: '69.95€'),
    ];
  }
}
