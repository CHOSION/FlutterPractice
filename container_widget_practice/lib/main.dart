import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ContainerWidget Practice',
      theme: ThemeData(
        primaryColor: Colors.green
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
                child: Text('Container_1'),
              ),
              SizedBox(
                width: 20.0,
              ),
              Container(
                width: 100,
                height: 60,
                color: Colors.red,
                child: Text('Container_2'),
              ),
              SizedBox(
                width: 40.0,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Text('Container_3'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

