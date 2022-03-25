import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigator',
      theme: ThemeData(primarySwatch: Colors.red),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1st Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to 2nd Page.'),
          onPressed: (){
            Navigator.push(context2, MaterialPageRoute(
                builder: (context) => SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2nd Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Back to 1st Page.'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
