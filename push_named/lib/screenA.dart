import 'package:flutter/material.dart';

class screenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen_A'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                color: Colors.red,
                child: Text('Go to Screen_B'),
                onPressed: (){
                  Navigator.pushNamed(context, '/b');
                }),
            RaisedButton(
                color: Colors.red,
                child: Text('Go to Screen_C'),
                onPressed: (){
                  Navigator.pushNamed(context, '/c');
                }),
          ],
        ),
      ),
    );
  }
}
