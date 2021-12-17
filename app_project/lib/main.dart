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
      home: const MyHomePage(title: 'LTG: Look for the game'),
    );
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'a darle duro',
            ),
          ],
        ),
      ),
    );
  }
}
