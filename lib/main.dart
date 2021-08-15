import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: HomeScreen(),
      ),
    );

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int imageNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[800],
      ),
      backgroundColor: Colors.blue[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: FlatButton(
            child: Image.asset('images/ball$imageNumber.png'),
            onPressed: () {
              setState(() {
                imageNumber = Random().nextInt(5) + 1;
              });
            },
          ),
        ),
      ),
    );
  }
}
