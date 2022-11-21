import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answersQuestion() {
    print(questionIndex);
    questionIndex = questionIndex + 1;
    print('cliquei aqui');
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
          Text(questions[0]),
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
