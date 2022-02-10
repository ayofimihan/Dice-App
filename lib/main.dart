import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.grey,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicebutton = 1;
  int rightdicebutton = 2;
  void changeNumber() {
    setState(() {
      leftdicebutton = Random().nextInt(6) + 1;
      rightdicebutton = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftdicebutton.png'),
              onPressed: () {
                changeNumber();
              },
            ),
            flex: 1,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              child: Image.asset('images/dice$rightdicebutton.png'),
              onPressed: () {
                changeNumber();
              },
            ),
          ))
        ],
      ),
    );
  }
}
