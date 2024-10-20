import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalPoints;

  const Result({
    required this.totalPoints,
    Key? key, // Add a key parameter
  }) : super(key: key); // Call the super constructor

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Parabéns! Você fez $totalPoints pontos!',
        style: const TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
