import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: BallPage(),
    ));

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {

  int ballNumber = 1;

  void changeImage() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        centerTitle: true,
        title: Text('Ask Me Anything'),
      ),
      body: Center(
        child: Container(
          child: GestureDetector(
            onTap: () {
              changeImage();
            },
            child: Image.asset('images/ball${ballNumber}.png'),
          ),
          width: 300,
          height: 400,
        ),
      ),
    );
  }
}
