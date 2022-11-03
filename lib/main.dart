// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 231, 166, 227),
        appBar: AppBar(
          title: Center(child: Text('Rolling Dice Game')),
          backgroundColor: Color.fromARGB(255, 45, 9, 56),
        ),
        body: Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int dice_no = 1;
  void update() {
    setState(() {
      //Random.nextInt(n) returns random integer from 0 to n-1
      dice_no = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: TextButton(
            child: Image.asset('images/dice$dice_no.png'),
            onPressed: () {
              update();
            },
          ),
        ),
      ),
    );
  }
}
