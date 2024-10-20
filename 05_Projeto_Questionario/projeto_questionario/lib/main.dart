import 'package:flutter/material.dart';

import 'header.dart';
import 'question.dart';
import 'answers.dart';

const List<Map<String, dynamic>> questionnaire = [
  {
    'question': 'Qual é a sua cor favorita?',
    'answers': <Map<String, dynamic>>[
      {'text': 'Preto', 'points': 10},
      {'text': 'Vermelho', 'points': 5},
      {'text': 'Verde', 'points': 3},
      {'text': 'Azul', 'points': 1},
    ]
  },
  {
    'question': 'Qual é o seu animal favorito?',
    'answers': <Map<String, dynamic>>[
      {'text': 'Coelho', 'points': 10},
      {'text': 'Cobra', 'points': 5},
      {'text': 'Elefante', 'points': 3},
      {'text': 'Leão', 'points': 1},
    ],
  },
  {
    'question': 'Qual é o seu instrutor favorito?',
    'answers': <Map<String, dynamic>>[
      {'text': 'Maria', 'points': 10},
      {'text': 'João', 'points': 5},
      {'text': 'Leo', 'points': 3},
      {'text': 'Pedro', 'points': 1},
    ],
  },
];

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({super.key});

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  final int _questionIndex = 0;
  final int _totalPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(
            double.infinity,
            kToolbarHeight,
          ),
          child: Header(),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                    child: Question(
                      questionnaire[_questionIndex]['question'],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Answers(questionnaire[_questionIndex]['answers']
                          ['text'])), // Error
                  Expanded(
                      child: Answers(questionnaire[_questionIndex]['answers']
                          ['text'])) // Error
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// questionnaire[_questionIndex]['answers']['text']