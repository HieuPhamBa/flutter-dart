import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  var _greenColor = Color(0xff32a05f);
  var _darkGreenColor = Color(0xff2789152);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 32.0,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.arrow_back),
                            Text('Preview'),
                            SizedBox(
                              height: 32.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 32.0,
                        ),
                        Container(
                          width: 300.0,
                          child: Text(
                            'Perfectly suited for graphic design & display use',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 58.0),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  padding:  new EdgeInsets.only(left: 2.0),
                  child: Text(
                    'Swipe to see more',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                )),
          ],
        ));
  }
}
