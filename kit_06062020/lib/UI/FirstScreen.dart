import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
              margin: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Column(
                children: <Widget>[
                  _boxHeaderText(),
                  _boxBodyText(context),
                  _boxFooterText(context),
                ],
              ))),
    );
  }

//First box text
  Widget _boxHeaderText() => Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 50),
      child: _textGroupHead());

  Widget _textGroupHead() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _textBaseHead('Comunication,'),
          _textBaseHead('Society and'),
          _textBaseHead('Media'),
        ],
      );

  Widget _textBaseHead(String text) => Text(
        '$text',
        style: TextStyle(
            fontSize: 48, color: Colors.black, fontWeight: FontWeight.bold),
      );

  //Second box text
  Widget _boxBodyText(BuildContext context) => Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _dividerLine(),
          _textGroupBody(context),
        ],
      ));

  Widget _dividerLine() => Expanded(
        child: Container(
            child: Divider(color: Colors.black, height: 36, thickness: 2)),
      );

  Widget _textGroupBody(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _textExpandedBody('02', context),
          _textExpandedBody(
              'Although the 10 million product, who use dating apps daily log in a average of 22 times and spends appporamtely  1.25 hoiurs on the apppm the maponity, do not meet face to dac on 2016, Rock 2016',
              context)
        ],
      );

  Widget _textExpandedBody(String text, BuildContext context) => Expanded(
          child: Container(
        width: MediaQuery.of(context).size.width / 2,
        child: Text(
          '$text',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ));

  //Box footer text
  Widget _boxFooterText(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("54",
              style: TextStyle(
                  fontSize: 200,
                  fontWeight: FontWeight.bold)),
          Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Text("%",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)))
        ],
      );
}
