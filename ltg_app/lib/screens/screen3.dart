import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ltg_app/main.dart';
import 'package:ltg_app/models/offers.dart';
import 'package:ltg_app/models/wishlist.dart';
//import 'package:app_project/main.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  late TextEditingController controller;

  List<Wish> wishes = [
    Wish("Fifa 22"),
    Wish("God of War"),
    Wish("The Binding of Isaac", true),
  ];

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
          content: Text(
            "Are you sure you want to "
            "delete '${wishes[index].what}'??",
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
          wishes.removeAt(index);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
                        offset: const Offset(0, 3)),
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
          Expanded(
            child: ListView.builder(
              itemCount: wishes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    setState(() {
                      wishes[index].toggleDone();
                    });
                  },
                  onLongPress: () {
                    confirmDelete(index);
                  },
                  leading: Checkbox(
                    value: wishes[index].done,
                    onChanged: (newValue) {
                      setState(() {
                        wishes[index].toggleDone();
                      });
                    },
                  ),
                  title: Text(
                    wishes[index].what,
                    style: TextStyle(
                      decoration: (wishes[index].done
                          ? TextDecoration.lineThrough
                          : TextDecoration.none),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 80,
            color: Colors.blue[100],
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    onSubmitted: (text) {
                      setState(() {
                        if (text.isNotEmpty) {
                          wishes.add(Wish(text));
                          controller.clear();
                        }
                      });
                    },
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      if (controller.text.isNotEmpty) {
                        wishes.add(Wish(controller.text));
                        controller.clear();
                      }
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      )),
    ));
  }
}

void OnPressedButon3() {}
