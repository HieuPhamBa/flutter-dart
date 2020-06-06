import 'package:flutter/material.dart';
import 'package:improve280520220/screen/first_screen.dart';
import 'package:improve280520220/screen/second_screen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SecondScreen(),
    );
  }
}
