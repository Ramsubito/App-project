import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:ltg_app/models/offers.dart';
import 'package:http/http.dart' as http;
//import 'package:app_project/main.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key, required this.title}) : super(key: key);

  final String title;

  get state => null;
  //final int state;
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  late TextEditingController _controller;
  List<Offers> _movies = [];

  final Offers item = Offers("Destiny", "Switch", "50");
  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _returnResult(String text) {
    Navigator.of(context).pop(item);
  }

  void _offersListSearch(String gameName) async {
    setState(() {
      _movies.clear();
    });
    String myurl =
        "https://video-game-price.p.rapidapi.com/game/?name_contains=$gameName&rapidapi-key=25edc57e30msh6062089ee09d89ep11c435jsn214395533310";
    var res = await http.get(Uri.parse(myurl));
    var decodedjson = jsonDecode(res.body);
    if (decodedjson["Results"].toString() == "False") {
      return;
    }
    int total = decodedjson["count"];
    if (total > 10) {
      total = 10;
    }
    for (int i = 0; i < total; i++) {
      Offers _movieModel = Offers.fromJson(decodedjson, i);
      setState(() {
        _movies.add(_movieModel);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        backgroundColor: Colors.white,
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
              Container(
                height: 175,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 70, 20, 20),
                  child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search your next game...',
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                      ),
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                      controller: _controller,
                      onSubmitted: (gameName) {
                        if (gameName.isNotEmpty) {
                          if (widget.state != -1) {
                            _offersListSearch(gameName);
                          }
                        } else {}
                      }),
                ),
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
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _movies.length,
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
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
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
                                        Text(_movies[index].getName,
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 234, 61, 78))),
                                        Text(
                                          _movies[index].getConsole,
                                          style: const TextStyle(fontSize: 15),
                                        )
                                      ]),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Text(
                                      _movies[index].getPrice,
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 234, 61, 78)),
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
        ));
  }
}

void OnPressedButon2() {}
