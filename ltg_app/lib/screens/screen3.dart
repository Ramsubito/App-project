//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
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
    // ignore: dead_code
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => FirebaseFirestore.instance
            .collection('testing')
            .add({'timestamp': Timestamp.fromDate(DateTime.now())}),
        child: Icon(Icons.add),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('testing').snapshots(),
          builder: (
            BuildContext context,
            AsyncSnapshot<QuerySnapshot> snapshot,
          ) {
            if (!snapshot.hasData) return const SizedBox.shrink();
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (BuildContext context, int index) {
                final docData = snapshot.data!.docs[index];
                final dateTime = (docData["timestamp"] as Timestamp).toDate();
                return ListTile(
                  title: Text(dateTime.toString()),
                );
              },
            );
          }),
    );
  }
}

void OnPressedButon3() {}
