import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceNum = 6;
  var activeDiceImage = 'assets/images/dice-6.png';
  void rollDice() {
    setState(() {
      diceNum = randomizer.nextInt(6) + 1; //generate random int  >=0, < 7
      activeDiceImage = 'assets/images/dice-$diceNum.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        activeDiceImage,
        width: 200,
      ),
      const SizedBox(height: 20), // takes width or height you need explicitly
      ElevatedButton(
          // onPressed: (){}, // LAMBDA - anonimous function
          onPressed: rollDice, // pointer to function
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.deepPurple,
            textStyle: const TextStyle(
              fontSize: 23,
            ),
          ),
          child: const Text(
            'Roll Dice',
            selectionColor: Colors.deepPurple,
          ))
    ]));
  }
}
