class Offers {
  String name;
  String console;
  String price;

  Offers({
    required this.name,
    required this.console,
    required this.price,
  });

  static where(bool Function(dynamic offers) param0) {}
}
