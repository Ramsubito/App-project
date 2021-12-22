// ignore: import_of_legacy_library_into_null_safe
import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:app_project/Info/mockedoffers.dart';
import 'package:app_project/models/offers.dart';
import 'package:app_project/main.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  //List<Offers> offers = Info.getMockedOffers().cast<Offers>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: StreamBuilder(
            stream: Firestore.instance.collection('Offers').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              List<DocumentSnapshot> doc = snapshot.data!.documents;
              return ListView.builder(
                  itemCount: doc.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map<String, dynamic> data = doc[index].data;
                    return ListTile(
                      title: Text(data['Game']),
                    );
                  });
            }),
      ),
    );
  }
}

void OnPressedButon3() {}
