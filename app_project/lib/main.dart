// ignore_for_file: unnecessary_const

import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const LTG_App());
}

class LTG_App extends StatelessWidget {
  const LTG_App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App: Roger Perez and Marc Ramos',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Scaffold(
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
          child: const MyHomePage(title: 'LTG: Look for the game'),
        )));
  }
}

//Treure AppBar per afegir el container gran principal.

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'LTG',
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'LOOK FOR THE GAME',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              width: 125,
              height: 125,
              margin: const EdgeInsets.only(top: 40),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  //color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage('Assets/Asset_LogoLTG.png'),
                      fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(0, 3)),
                  ]),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 6)),
                  ]),
              child: ElevatedButton(
                  onPressed: OnPressedButon,
                  child: const Text(
                    'Look for prices',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                      fontFamily: 'Swiss',
                    ),
                  ),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 234, 61, 78)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 234, 61, 78)),
                    fixedSize:
                        MaterialStateProperty.all<Size>(const Size(250, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  )),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 6)),
                  ]),
              child: ElevatedButton(
                  onPressed: OnPressedButon,
                  child: const Text(
                    'News',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                      fontFamily: 'Swiss',
                    ),
                  ),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 234, 61, 78)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 234, 61, 78)),
                    fixedSize:
                        MaterialStateProperty.all<Size>(const Size(250, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  )),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 6)),
                  ]),
              child: ElevatedButton(
                  onPressed: OnPressedButon,
                  child: const Text(
                    'Your Wishlist',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                      fontFamily: 'Swiss',
                    ),
                  ),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 234, 61, 78)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 234, 61, 78)),
                    fixedSize:
                        MaterialStateProperty.all<Size>(const Size(250, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  )),
            ),
          )
        ],
      )),
    );
  }
}

// ignore: non_constant_identifier_names
void OnPressedButon() {}
