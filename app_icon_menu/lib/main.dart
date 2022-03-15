import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar Icon Menu'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu), // menu icon
          onPressed: () { // button pressed -> 반환값 없다
            print('Menu Button is Clicked.');
          },
        ),
        actions: <Widget>[ // 1개 이상의 위젯리스트 생성
          IconButton(
            icon: Icon(Icons.shopping_cart), // shopping cart icon
            onPressed: () {
              print('Shopping Cart is Clicked.');
            },
          ),
          IconButton(
            icon: Icon(Icons.search), // shopping cart icon
            onPressed: () {
              print('Search Button is Clicked.');
            },
          ),
        ],
      ),
    );
  }
}
