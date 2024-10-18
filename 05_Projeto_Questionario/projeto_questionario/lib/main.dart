import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

void main(List<String> args) => runApp(Questionario());

const List<String> perguntas = [
  'Qual é a sua cor favorita?',
  'Qual é o seu animal favorito?',
  'Qual é o seu instrutor favorito?'
];

const List<Map<String, Object>> respostas = [
  {
    'texto': 'Preto',
    'pontuacao': 10,
  },
  {
    'texto': 'Vermelho',
    'pontuacao': 5,
  },
  {
    'texto': 'Verde',
    'pontuacao': 3,
  },
  {
    'texto': 'Branco',
    'pontuacao': 1,
  },
];

class Escolha extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const Escolha({
    required this.texto,
    required this.quandoSelecionado,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: quandoSelecionado,
        style: ButtonStyle(
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          backgroundColor: const MaterialStatePropertyAll<Color>(
            Color.fromARGB(255, 0, 140, 255),
          ),
        ),
        child: Text(
          texto,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    );
  }
}

class Questionario extends StatefulWidget {
  @override
  State<Questionario> createState() => _QuestionarioState();
}

class _QuestionarioState extends State<Questionario> {
  int perguntaSelecionada = 0;

  void quandoSelecionado() {
    setState(() {
      if (perguntaSelecionada < perguntas.length - 1) {
        perguntaSelecionada += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Questionário',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: const Color(0xff000000),
          ),
          body: Container(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  perguntas[perguntaSelecionada],
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Gap(12),
                Escolha(
                  texto: 'Preto',
                  quandoSelecionado: quandoSelecionado,
                ),
                const Gap(4),
                Escolha(
                  texto: 'Vermelho',
                  quandoSelecionado: quandoSelecionado,
                ),
                const Gap(4),
                Escolha(
                  texto: 'Verde',
                  quandoSelecionado: quandoSelecionado,
                ),
              ],
            ),
          )),
    );
  }
}
