import 'package:flutter/material.dart';

export 'package:projeto_questionario/question.dart';

// ignore: must_be_immutable
class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(14),
      padding: const EdgeInsets.all(14),
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
        questionText,
      ),
    );
  }
}
