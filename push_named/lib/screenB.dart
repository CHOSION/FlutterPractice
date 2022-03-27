import 'package:flutter/material.dart';

class screenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen_B'),
      ),
      body: Center(
        child: Text('Screen_B',
          style: TextStyle(
            fontSize: 24.0
          ),
        ),
      )
    );
  }
}
