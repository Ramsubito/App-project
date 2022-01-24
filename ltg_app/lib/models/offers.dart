import 'dart:ffi';

class Offers {
  late String _full_name;
  late String _console_name;
  late double _price_nib;
  //late int _offerID;

  Offers(String full_name, String console_name, double price_nib) {
    this._full_name = full_name;
    this._console_name = console_name;
    this._price_nib = price_nib;
    //this._offerID = offerID;
  }

  String get getName => _full_name;
  String get getConsole => _console_name;
  double get getPrice => _price_nib;
  //int get getID => _offerID;

  Offers.fromJson(Map<String, dynamic> json, int iteration) {
    _full_name = json["Results"][iteration]['full_name'];
    _console_name = json["Results"][iteration]['console_name'];
    _price_nib = json["Results"][iteration]['price_nib'];
  }
}
