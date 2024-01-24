import 'package:flutter/material.dart';
// import 'package:rolldice/StyledText.dart';
import 'package:rolldice/dice_roller.dart';

const beginAl = Alignment.topLeft;
const endAl = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors}); // constructor
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors, begin: beginAl, end: endAl),
      ),
      child: const DiceRoller(),
    );
  }
}
