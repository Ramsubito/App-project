//import 'package:flutter/foundation.dart';
import 'package:app_project/main.dart';
import 'package:app_project/models/news.dart';
import 'package:app_project/screens/newsscreen.dart';
import 'package:app_project/screens/screen1.dart';
import 'package:flutter/material.dart';
import 'package:app_project/Info/mockednews.dart';
//import 'package:app_project/main.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  List<News> news = Info.getMockedNews().cast<News>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: Center(
        child: Container(
            color: const Color.fromARGB(255, 234, 61, 78),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: const Text(
                      'WHAT TO PLAY',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Swiss', fontSize: 30),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: news.length,
                      itemBuilder: (BuildContext context, int index) {
                        // ignore: avoid_unnecessary_containers
                        return Container(
                          margin: const EdgeInsets.all(10),
                          height: 150,
                          child: Stack(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const NewsScreen(
                                      title: 'eso',
                                    ),
                                  ));
                                },
                                style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          const Color.fromARGB(255, 0, 0, 0)),
                                  backgroundColor: MaterialStateProperty.all<
                                          Color>(
                                      const Color.fromARGB(255, 255, 255, 255)),
                                  shadowColor: MaterialStateProperty.all<Color>(
                                      const Color.fromARGB(255, 50, 50, 50)),
                                  overlayColor:
                                      MaterialStateProperty.all<Color>(
                                          const Color.fromARGB(50, 50, 50, 50)),
                                  elevation:
                                      MaterialStateProperty.all<double>(15),
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
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 20, 10, 20)),
                                            Text(news[index].game,
                                                style: const TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 234, 61, 78))),
                                            Text(
                                              news[index].title,
                                              style:
                                                  const TextStyle(fontSize: 15),
                                            )
                                          ]),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Image.asset(
                                          'Assets/' +
                                              news[index].imgName +
                                              '.png',
                                          fit: BoxFit.contain),
                                    ),
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
              ),
            )),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
void OnPressedButon2() {}
