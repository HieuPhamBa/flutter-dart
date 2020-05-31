import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 58, 69, 88),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0, // Remove shadow
          title: Text('title',
              style: new TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0)),
          actions: <Widget>[
            new Container(
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.all(Radius.circular(30.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(200, 0, 0, 0),
                          offset: Offset(0, 3),
                          blurRadius: 5)
                    ],
                    image: DecorationImage(
                        image: AssetImage('images/46277436.jpg'),
                        fit: BoxFit.cover)),
                padding: EdgeInsets.all(22),
                margin: EdgeInsets.only(right: 10.0, top: 5.0, bottom: 5.0))
          ],
        ),
        body: Column(children: [
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white30, width: 2),
                  borderRadius: BorderRadius.circular(25)),
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(30),
              child: Row(
                children: <Widget>[
                  Container(
                      child: Icon(Icons.search, color: Colors.white, size: 30),
                      margin: const EdgeInsets.only(right: 10)),
                  Text("search...",
                      style: TextStyle(color: Colors.white60, fontSize: 25))
                ],
              )),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 7), // changes position of shadow
                  ),
                ],
                gradient: LinearGradient(
                    stops: [0, .4, 1],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.pink[200], Colors.pinkAccent, Colors.red])),
            child: Column(children: [
              Icon(Icons.language, size: 90, color: Colors.white),
              Text('Dribbble',
                  style: TextStyle(fontSize: 30, color: Colors.white)),
              Text('@realvjy',
                  style: TextStyle(fontSize: 15, color: Colors.grey)),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white30, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  children: <Widget>[
                    Text("123 ",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Expanded(
                        child: Text("shots",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white))),
                    Text("add new",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              )
            ]),
          )
        ]));
  }
}
