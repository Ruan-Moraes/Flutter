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
  int _questionIndex = 0;
  int _totalPoints = 0;

  void _answerQuestion(int points) {
    if (_questionIndex <= questionnaire.length - 1) {
      setState(() {
        _questionIndex++;
        _totalPoints += points;
      });
    }
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalPoints = 0;
    });
  }

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
          height: double.infinity,
          child: _questionIndex == questionnaire.length
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.all(14),
                          child: Text(
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            _totalPoints >= 20
                                ? 'Você é incrível! Você conseguiu $_totalPoints pontos🎉!'
                                : 'Parabéns! Você conseguiu $_totalPoints pontos.',
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            padding:
                                WidgetStateProperty.all<EdgeInsetsGeometry>(
                              const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 36,
                              ),
                            ),
                            shape: WidgetStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            backgroundColor:
                                WidgetStateProperty.all<Color>(Colors.blue),
                          ),
                          onPressed: resetQuiz,
                          child: const Text(
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              'Reiniciar'),
                        ),
                      ],
                    ),
                  ],
                )
              : Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Expanded(
                          child: Question(
                            questionnaire[_questionIndex]['question'],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Answers(
                              questionnaire[_questionIndex]['answers'][0]
                                  ['text'],
                              questionnaire[_questionIndex]['answers'][0]
                                  ['points'],
                              _answerQuestion),
                        ),
                        Expanded(
                          child: Answers(
                              questionnaire[_questionIndex]['answers'][1]
                                  ['text'],
                              questionnaire[_questionIndex]['answers'][1]
                                  ['points'],
                              _answerQuestion),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Answers(
                              questionnaire[_questionIndex]['answers'][2]
                                  ['text'],
                              questionnaire[_questionIndex]['answers'][2]
                                  ['points'],
                              _answerQuestion),
                        ),
                        Expanded(
                          child: Answers(
                              questionnaire[_questionIndex]['answers'][3]
                                  ['text'],
                              questionnaire[_questionIndex]['answers'][3]
                                  ['points'],
                              _answerQuestion),
                        ),
                      ],
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
