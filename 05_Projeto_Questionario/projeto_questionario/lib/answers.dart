import 'package:flutter/material.dart';

export 'package:projeto_questionario/answers.dart';

class Answers extends StatelessWidget {
  final String answerText;
  final int points;
  final void Function(int) onTap;

  const Answers(
    this.answerText,
    this.points,
    this.onTap, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFE0E0E0),
          padding: const EdgeInsets.all(8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        onPressed: () => onTap(points),
        child: Text(
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF000000),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          answerText,
        ),
      ),
    );
  }
}
