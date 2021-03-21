import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Ball(),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Ask Me Anything'),
      ),
      body: Center(
        child: Container(
          child: FlatButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5) + 1;
                print(ballNumber);
              });
            },
            child: Image.asset('images/ball$ballNumber.png'),
          ),
        ),
      ),
    );
  }
}
