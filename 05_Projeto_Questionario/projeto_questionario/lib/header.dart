import 'package:flutter/material.dart';
export 'package:projeto_questionario/header.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF000000),
      centerTitle: true,
      title: const Text(
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFFFFF)),
        "Questionário APP",
      ),
    );
  }
}
