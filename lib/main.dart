import 'package:flutter/material.dart';
import 'package:rolldice/gradient_container.dart';

void main() {
  const List<Color> colors = [
    Colors.transparent,
    Colors.deepPurpleAccent,
    Colors.deepPurple
  ];
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: colors),
      ),
    ),
  );
}
