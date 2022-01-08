import 'dart:ffi';

import 'package:flutter/material.dart';
import 'result.dart';
import 'quiz.dart';

main() {
  runApp(QuestionApp());
}

class _QuestionsAppState extends State<QuestionApp> {
  var _questionIndex = 0;
  var _score = 0;

  final List<Map<String, Object>> _questions = const [
    {
      'question': 'Qual o nome do desenvolvedor',
      'answers': [
        {'text': 'Antonio', 'value': 15},
        {'text': 'Frederico', 'value': 8},
        {'text': 'Mellies', 'value': 5},
        {'text': 'Neto', 'value': 10},
      ]
    },
    {
      'question': 'Qual a cidade onde você mora ?',
      'answers': [
        {'text': 'Penha', 'value': 10},
        {'text': 'Blumenau', 'value': 0},
        {'text': 'São Paulo', 'value': 0},
      ]
    },
    {
      'question': 'Qual o nome do seu cachorro ?',
      'answers': [
        {'text': 'Osvaldo', 'value': 10},
        {'text': 'Clovis', 'value': 15},
        {'text': 'Adalberto', 'value': 5},
      ]
    },
  ];

  void _reply(int value) {
    setState(() {
      _questionIndex++;
      _score += value;
    });
    print(_score);
  }

  bool get hasValidAnswer {
    return _questionIndex < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: hasValidAnswer
            ? Quiz(
                index: _questionIndex,
                isValid: hasValidAnswer,
                reply: _reply,
                questions: _questions)
            : Result(_score),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  @override
  _QuestionsAppState createState() {
    return _QuestionsAppState();
  }
}
