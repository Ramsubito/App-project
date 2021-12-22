import 'package:app_project/models/news.dart';
import 'package:app_project/screens/screen2.dart';
import 'package:flutter/material.dart';
import 'package:app_project/Info/mockednews.dart';
//import 'package:app_project/main.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<News> news = Info.getMockedNews().cast<News>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Screen2(
                  title: 'eso',
                ),
              ));
            },
          ),
        ),
      ),
    );
  }
}
