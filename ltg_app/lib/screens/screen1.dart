import 'package:flutter/material.dart';
import 'package:ltg_app/Info/mockedoffers.dart';
import 'package:ltg_app/models/offers.dart';
//import 'package:app_project/main.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  List<Offers> offers = Info.getMockedOffers().cast<Offers>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
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
                      offset: Offset(0, 3)),
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
          Expanded(
            child: ListView.builder(
              itemCount: offers.length,
              itemBuilder: (BuildContext context, int index) {
                // ignore: avoid_unnecessary_containers
                return Container(
                  margin: const EdgeInsets.all(10),
                  height: 100,
                  child: Stack(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 0, 0, 0)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 255, 255, 255)),
                          shadowColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 50, 50, 50)),
                          overlayColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(50, 50, 50, 50)),
                          elevation: MaterialStateProperty.all<double>(15),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //const Padding(padding: EdgeInsets.fromLTRB(5, 0, 5, 0)),
                            Expanded(
                              flex: 1,
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    const Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            10, 20, 10, 20)),
                                    Text(offers[index].name,
                                        style: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 234, 61, 78))),
                                    Text(
                                      offers[index].console,
                                      style: const TextStyle(fontSize: 15),
                                    )
                                  ]),
                            ),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  offers[index].price,
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 234, 61, 78)),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}

void OnPressedButon2() {}
