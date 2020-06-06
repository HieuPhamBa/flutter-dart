import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[850],
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _mAppBar(),
              _mSearchView(),
              _mCardView(Colors.pink, 'dribbble', '123'),
              _mCardView(Colors.lightBlue, 'Behance', '207')
            ],
          ),
        )));
  }

  Widget _mAppBar() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Protia',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://znews-photo.zadn.vn/w660/Uploaded/ofh_btgazspf/2020_04_21/72490248_2171590286280955_801542116927864832_o.jpg')),
        ],
      );

  Widget _mSearchView() => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.grey[400], width: 1)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(
              width: 8,
            ),
            Text('search...',
                style: TextStyle(fontSize: 18, color: Colors.grey[400]))
          ],
        ),
      );

  Widget _mCardView(
          Color colorBackGround, String headerTitle, String postsNumber) =>
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: colorBackGround,
        ),
        child: Column(
          children: <Widget>[
            Icon(Icons.account_circle, size: 70, color: Colors.white),
            Text(
              '$headerTitle',
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '@realvjy',
              style: TextStyle(fontSize: 18, color: Colors.white38),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  border: Border.all(color: Colors.white38, width: 2)),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        '$postsNumber',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('shots',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white38,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  Text('add new',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 20)
          ],
        ),
      );
}
