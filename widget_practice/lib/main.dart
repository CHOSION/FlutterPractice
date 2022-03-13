import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Character Card',
      home: MyCard(),
    ); // MaterialApp
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BBANTO'),
        // 중앙정렬
        centerTitle: true,
        // 색상
        backgroundColor: Colors.deepOrangeAccent,
        // 그림자 제거
        elevation: 0.0,
      ),
      body:
        Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello_1'),
              Text('Hello_2'),
              Text('Hello_3'),
            ],
          ),
        ),
    );
  }
}