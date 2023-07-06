import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/cumston_button.dart';
import 'dart:math';

class DiceExample extends StatefulWidget {
  const DiceExample({Key? key}) : super(key: key);

  @override
  State<DiceExample> createState() => _DiceExampleState();
}

class _DiceExampleState extends State<DiceExample> {
  Random randomNum = Random();
  var imageName = 'assets/images/dice-1.png';
  void handleDiceRoller() {
    setState(() {
      var rollDice = randomNum.nextInt(6) + 1;
      imageName = 'assets/images/dice-$rollDice.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageName, width: 150.0),
        CustomButton(
            onPressed: handleDiceRoller,
            buttonName: "Roll",
            buttonStyle: TextButton.styleFrom(
              shape: const BeveledRectangleBorder(
                  side: BorderSide(
                      width: 1.0, color: Colors.red, strokeAlign: 3.0)),
              elevation: 10.0,
              foregroundColor: Colors.yellow,
              // padding: const EdgeInsets.all(10.0),
            )),
      ],
    );
  }
}
