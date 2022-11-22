import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

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
  void answersQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = ['Primeira questão', 'Segunda questão'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Navegação '),
        ),
        body: Column(children: [
          Question(questions[questionIndex]),
          ElevatedButton(
            onPressed: answersQuestion,
            child: Text('Botao'),
          ),
          ElevatedButton(
            onPressed: () => print('Questão dois'),
            child: Text('Botao'),
          ),
          ElevatedButton(
            onPressed: () {
              print('Qiestão 3');
            },
            child: Text('Botao'),
          )
        ]),
      ),
    );
  }
}
