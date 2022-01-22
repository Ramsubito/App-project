import 'package:ltg_app/models/news.dart';

class Info {
  static List<News> getMockedNews() {
    return [
      News(
          game: 'Call of Duty',
          title: 'New weapon system added with last release.',
          imgName: 'callof'),
      News(
          game: 'Fortnite',
          title: 'This game is adding all type of franchises.',
          imgName: 'fortnite1'),
      News(
          game: 'Destiny',
          title: 'They will keep your kidney to play.',
          imgName: 'destiny1'),
      News(
          game: 'Dark Souls',
          title: 'You will be shitting yourself playing this.',
          imgName: 'eldenring1'),
      News(
          game: 'Stormbound',
          title: 'New opportunities for designers to learn',
          imgName: 'stormbound1'),
    ];
  }
}
