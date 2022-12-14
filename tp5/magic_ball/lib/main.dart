import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Magic Ball",
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white
            ),
            ),
            centerTitle: true,

          ),

          body: Ball(),
        ),
    );
  }
}
class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnum=1;
  void updateImage(){
    setState(() {
      ballnum=Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: updateImage ,

        child: Image.asset(
            'images/ball$ballnum.png'
        ),
      ),
    );
  }
}

