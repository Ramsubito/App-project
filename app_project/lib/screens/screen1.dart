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
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 175,
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
            child: Row(
              children: <Widget>[
                Container(
                  width: 300,
                  height: 50,
                  margin: const EdgeInsets.only(left: 35, top: 65),
                  child: Row(
                    children: const [
                      Text(
                        'Search...',
                        style: TextStyle(fontSize: 24, color: Colors.grey),
                      ),
                      Padding(padding: EdgeInsets.only(left: 150)),
                      Icon(
                        Icons.search,
                        size: 42,
                      )
                    ],
                  ),
                  padding: const EdgeInsets.only(top: 3, left: 6),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(20), //Search your trip add icon
                    color: Colors.grey.shade200,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            width: 320,
            margin: const EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 6)),
                ]),
            child: ElevatedButton(
                onPressed: OnPressedButon2,
                child: const Text(
                  'Game1',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontFamily: 'Swiss',
                  ),
                ),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 245, 245, 245)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 245, 245, 245)),
                  fixedSize:
                      MaterialStateProperty.all<Size>(const Size(250, 50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                )),
          ),
          Container(
            height: 80,
            width: 320,
            margin: const EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 6)),
                ]),
            child: ElevatedButton(
                onPressed: OnPressedButon2,
                child: const Text(
                  'Game2',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontFamily: 'Swiss',
                  ),
                ),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 245, 245, 245)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 245, 245, 245)),
                  fixedSize:
                      MaterialStateProperty.all<Size>(const Size(250, 50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                )),
          ),
          Container(
            height: 80,
            width: 320,
            margin: const EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 6)),
                ]),
            child: ElevatedButton(
                onPressed: OnPressedButon2,
                child: const Text(
                  'Game3',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontFamily: 'Swiss',
                  ),
                ),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 245, 245, 245)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 245, 245, 245)),
                  fixedSize:
                      MaterialStateProperty.all<Size>(const Size(250, 50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                )),
          ),
          Container(
            height: 80,
            width: 320,
            margin: const EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 6)),
                ]),
            child: ElevatedButton(
                onPressed: OnPressedButon2,
                child: const Text(
                  'Game4',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontFamily: 'Swiss',
                  ),
                ),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 245, 245, 245)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 245, 245, 245)),
                  fixedSize:
                      MaterialStateProperty.all<Size>(const Size(250, 50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                )),
          )
        ],
      )),
    );
  }
}

void OnPressedButon2() {}
