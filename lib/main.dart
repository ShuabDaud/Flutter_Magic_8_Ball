import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BallPageScreen(),
    );
  }
}

class BallPageScreen extends StatefulWidget {
  const BallPageScreen({super.key});

  @override
  State<BallPageScreen> createState() => _BallPageScreenState();
}

class _BallPageScreenState extends State<BallPageScreen> {
  var ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
          child: GestureDetector(
        onTap: () {
          setState(() {
            ballNum = Random().nextInt(5) + 1;
            print('I got pressed!');
          });
        },
        child: Image.asset('images/ball$ballNum.png'),
      )),
    );
  }
}
