import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueAccent.shade100,
          appBar: AppBar(
            title: Center(
              child: Text(
                'Ask Me Anything',
                style: TextStyle(fontSize: 32.0, fontFamily: 'Pacifico'),
              ),
            ),
            backgroundColor: Colors.blueAccent.shade700,
          ),
          body: Magic8ball(),
        ),
      ),
    );

class Magic8ball extends StatefulWidget {
  @override
  _Magic8ballState createState() => _Magic8ballState();
}

class _Magic8ballState extends State<Magic8ball> {
  int mballnum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  mballnum = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$mballnum.png'),
            ),
          )
        ],
      ),
    );
  }
}
