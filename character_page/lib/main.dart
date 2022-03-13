import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Character Card',
      home: Grade(),
    ); // MaterialApp
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        title: Text('POKEMON'),
        // 색상
        backgroundColor: Colors.red[500],
        // 중앙정렬
        centerTitle: true,
        // 그림자 제거
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Garchomp.gif'),
                radius: 70.0,
              ),
            ),

            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),

            Text('NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Garchomp',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 30.0,
            ),

            Text('Max CP',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
            ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('4479',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 30.0,
            ),

            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('Dragon Tail',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('Outrage',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('Earth Power',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),
                ),
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Garchomp.png'),
                radius: 90.0,
                backgroundColor: Colors.deepPurple[300],
              ),
            )
          ],
        )
      )
    );
  }
}