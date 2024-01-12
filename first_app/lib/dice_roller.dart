import 'package:flutter/material.dart';
import 'dart:math'; // dart package

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  // stateful widget
  // State is generic value type
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// Private class -> even if you import this file into another file, _DiceRollerState can't be use
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    // currentDiceRoll = Random().nextInt(6) + 1;

    // setState method provided by State Class, it accepts anonymous function
    setState(() {
      // perform any update related to class / object variable which will be reflected in UI
      // it tell reexecute build function. it updates in actual UI where updates require.
      // var activeDiceImage = 'assets/images/dice-$currentDiceRoll.png';
      // currentDiceRoll = Random().nextInt(6) + 1; // Random : does redundunt work by creating every time new object 7 stored in memroy & thrown away old object
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
    // print('print');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        //ElevatedButton(onPressed: onPressed, child: child)//
        // OutlinedButton(onPressed: onPressed, child: child)
        // Way2 instead of adding padding -> to add spacing between dice & button
        const SizedBox(height: 10, width: 100),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20), way1
                foregroundColor: Colors.white,
                textStyle: const TextStyle(color: Colors.black, fontSize: 28)),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
