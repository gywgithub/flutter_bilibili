import 'package:flutter/material.dart';

import 'root_page.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '哔哩哔哩_demo',
      theme: ThemeData(

        primarySwatch: Colors.pink,
        splashColor: Color.fromRGBO(1, 0, 0, 0.0),
      ),
      home: RootPage(),
    );
  }
}




