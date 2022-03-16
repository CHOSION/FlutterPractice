import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Snackbar Builder',
      theme: ThemeData(
          primarySwatch: Colors.red
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
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Show Me'),
        onPressed: (){
          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Hello',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white
          ),
          ),
            backgroundColor: Colors.teal,
            duration: Duration(microseconds: 1000),
          ),
          );
        }),
    );
  }
}

