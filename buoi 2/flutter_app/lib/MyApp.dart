import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapp/HomePage.dart';
import 'package:flutterapp/Seacrh.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greenery NYC',
      home: SearchPage(),
    );
  }
}
