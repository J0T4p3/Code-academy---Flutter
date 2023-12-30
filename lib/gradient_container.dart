import 'package:flutter/material.dart';
import 'package:udemy_app/roll_dices.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    required this.colors,
    super.key,
  });

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: colors,
        ),
      ),
      child: const Center(
        child: RollDices(),
      ),
    );
  }
}
