import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dice"),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    )
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void diceChanger() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              "Click on dices to change !",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
          ),
          SizedBox(
            width: 300,
            height: 50,
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      diceChanger();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent
                    ),
                    child: Image.asset("images/dice$leftDiceNumber.png"),
                  )
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        diceChanger();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent
                      ),
                      child: Image.asset("images/dice$rightDiceNumber.png")
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}




