import 'package:flutter/material.dart';
import 'package:push_named/screenA.dart';
import 'package:push_named/screenB.dart';
import 'package:push_named/screenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => screenA(),
        '/b': (context) => screenB(),
        '/c': (context) => screenC(),
      },
    );
  }
}

