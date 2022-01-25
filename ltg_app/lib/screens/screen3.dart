//import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ltg_app/main.dart';
import 'package:ltg_app/models/offers.dart';
import 'package:http/http.dart' as http;

class Screen3 extends StatefulWidget {
  const Screen3({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  late TextEditingController controller;
  var gameName = '';
  var itsDone = false;
  final Stream<QuerySnapshot> wishes =
      FirebaseFirestore.instance.collection('wishes').snapshots();

  //List<Wish> wishes = [];

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void confirmDelete(int index) {
    showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Confirm Delete"),
          content: const Text(
            "Are you sure you want to "
            "delete this?",
          ),
          actions: [
            TextButton(
              child: const Text("Cancel"),
              onPressed: () => Navigator.of(context).pop(false),
            ),
            TextButton(
              child: const Text("Delete"),
              onPressed: () => Navigator.of(context).pop(true),
            ),
          ],
        );
      },
    ).then((result) {
      if (result != null && result) {
        setState(() {
          //wishes.removeAt(index);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    CollectionReference wishes =
        FirebaseFirestore.instance.collection('wishes');
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 150, 150, 150),
          ],
        ),
      ),
      child: Center(
          child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              height: 150,
              width: 400,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 234, 61, 78),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 3)),
                  ]),
              child: Column(
                children: const <Widget>[
                  Padding(padding: EdgeInsets.only(top: 40)),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Text(
                    'Your Wishlist',
                    style: TextStyle(fontSize: 35, fontFamily: 'Prototype'),
                  )
                ],
              ),
            ),
          ),
          // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
          Expanded(
            child: Container(
              width: 100,
              height: 50,
              child: StreamBuilder<QuerySnapshot>(
                stream: wishes.snapshots(),
                builder: (
                  BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot,
                ) {
                  if (snapshot.hasError) {
                    return const Text('Something went wrong');
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Text('loading');
                  }
                  final data = snapshot.requireData;
                  return ListView.builder(
                      itemCount: data.size,
                      itemBuilder: (context, index) {
                        return Text(data.docs[index]['Game']);
                      });
                },
              ),
            ),
          ),

          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                height: 80,
                color: Colors.blue[100],
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: controller,
                        onSubmitted: (text) {
                          setState(() {
                            if (text.isNotEmpty) {
                              wishes
                                  .add({'Game': text, 'Done': false})
                                  .then((value) => print('Wish Added'))
                                  .catchError((error) =>
                                      print('Failed to add wish: $error'));
                              controller.clear();
                            }
                          });
                        },
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          if (controller.text.isNotEmpty) {
                            //wishes.add(Wish(controller.text));
                            controller.clear();
                          }
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    ));
  }
}

void OnPressedButon3() {}
