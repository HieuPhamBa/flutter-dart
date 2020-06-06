import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
            backgroundColor: Colors.yellow,
            leading: Icon(Icons.arrow_back, color: Colors.black),
            title: Text(
              "Preview",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: false,
            elevation: 0),
        body: SafeArea(
            child: SingleChildScrollView(
                child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[_mBody(), _eBody()],
          ),
        ))));
  }

  Widget _mAppBar() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
        child: Row(
          children: <Widget>[
            Icon(Icons.arrow_back, color: Colors.black),
            SizedBox(
              width: 10,
            ),
            Text('Preview',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold))
          ],
        ));
  }

  Widget _mBody() {
    return Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[_textGroup()],
        ));
  }

  Widget _textGroup() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _baseText('Perfectly'),
          _baseText('suited for'),
          _baseText('graphic'),
          _baseText('design'),
          _baseText('& display'),
          _baseText('use'),
        ],
      );

  Widget _baseText(String text) {
    return Text(text,
        style: TextStyle(
            color: Colors.black, fontSize: 63, fontWeight: FontWeight.bold));
  }

  Widget _eBody() => Padding(
        padding: const EdgeInsets.only(top: 130),
        child: Text('Swipe to see more',
            style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold)),
      );
}
