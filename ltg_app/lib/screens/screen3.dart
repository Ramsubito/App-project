//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ltg_app/Info/mockedoffers.dart';
import 'package:ltg_app/models/offers.dart';
//import 'package:app_project/main.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  List<Offers> offers = Info.getMockedOffers().cast<Offers>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
          'Hem tingut problemes amb el Firestore i finalment l hem eliminat del projecte, per la seguent entrega estará implementat'),
    ));
  }
}

void OnPressedButon3() {}
