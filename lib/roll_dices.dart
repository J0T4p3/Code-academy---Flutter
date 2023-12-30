import 'dart:math';

import 'package:flutter/material.dart';

Random randomizer = Random();

class RollDices extends StatefulWidget {
  const RollDices({super.key});

  @override
  State<RollDices> createState() {
    return _RollDicesState();
  }
}

class _RollDicesState extends State<RollDices> {
  int diceNumber = 1;
  int getDiceNumber() {
    int randomDiceNumber = randomizer.nextInt(6) + 1;
    return randomDiceNumber;
  }

  @override
  build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-images/dice-$diceNumber.png',
          width: 200,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              diceNumber = getDiceNumber();
            });
          },
          child: const Text('Rolar dados!'),
        ),
      ],
    );
  }
}
