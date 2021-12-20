import 'package:flutter/material.dart';
import 'package:app_project/main.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prices Sceen'),
      ),
      backgroundColor: Colors.transparent,
      body: Center(
          child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 225,
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
                  Icon(
                    Icons.settings,
                    color: Colors.black,
                    size: 50,
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Text(
                    'New Screen',
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
