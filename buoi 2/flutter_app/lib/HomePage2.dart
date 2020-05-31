import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyHomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 58, 69, 88),
        body: Container(
          padding: const EdgeInsets.only(left: 50, right: 50, bottom: 40),
          decoration: BoxDecoration(
            color: Colors.pinkAccent
          ),
          child: Column(
            children: <Widget>[
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: Text("Track your work and get results.",
                    style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                        fontFamily: 'Times')),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: Text(
                    "Structure work in a way that's best for you. Set priorities. Share details and assign tasks.",
                    style: TextStyle(color: Colors.white)),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    "Skip",
                    textAlign: TextAlign.right,
                  ))
                ],
              )
            ],
          ),
        ));
  }
}