import 'package:flutter/material.dart';

export 'package:projeto_questionario/answers.dart';

// ignore: must_be_immutable
class Answers extends StatelessWidget {
  final String answerText;

  Answers(this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(14),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color.fromARGB(255, 40, 86, 222)),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color(0xFF000000),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        answerText,
      ),
    );
  }
}