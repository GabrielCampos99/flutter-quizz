import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void _answersQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = [
      {
        'statement': 'Qual o seu nome?',
        'answers': ['Gabriel', 'Fernando', 'Marcos', 'Leoni']
      },
      {
        'statement': 'Qual a sua idade?',
        'answers': ['18', '19', '20', '21']
      },
      {
        'statement': 'Terceira pergunta?',
        'answers': ['Resposta 1', 'Resposta 2', 'Resposta 3', 'Resposta 4']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Navegação '),
        ),
        body: Column(children: [
          Question(questions[questionIndex]['statement']),
          ...(questions[questionIndex]['answers'] as List<String>).map((ans) {
            return Answer(_answersQuestion, ans);
          })
        ]),
      ),
    );
  }
}
