import 'package:flutter/material.dart';

class screenC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Screen_C'),
        ),
        body: Center(
          child: Text('Screen_C',
            style: TextStyle(
                fontSize: 24.0
            ),
          ),
        )
    );
  }
}