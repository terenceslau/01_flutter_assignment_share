// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';

import 'text_control.dart';
import 'text_pill.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var pill = '';

  void chooseBlue() {
    setState(() {
      pill = 'Blue pill';
    });
  }

  void chooseRed() {
    setState(() {
      pill = 'Red pill';
    });
  }

  void resetPill() {
    setState(() {
      pill = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Assignment'),
        ),
        body: Column(
          children: <Widget>[
            TextPill(pill: pill),
            TextControl(
              chooseRed: chooseRed,
              chooseBlue: chooseBlue,
              resetPill: resetPill,
            ),
          ],
        ),
      ),
    );
  }
}
