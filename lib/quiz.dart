import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final int index;
  final bool isValid;
  final List<Map<String, Object>> questions;
  final void Function(int) reply;

  Quiz(
      {required this.index,
      required this.isValid,
      required this.reply,
      required this.questions});

  @override
  Widget build(BuildContext context) {
    final List<Widget> answersWidget = [];

    if (isValid) {
      for (Map answers in questions[index].cast()['answers']) {
        answersWidget.add(
            Answer(answers['text'].toString(), () => reply(answers['value'])));
      }
    }

    return Column(
      children: [
        Question(questions[index]['question'].toString()),
        ...answersWidget
      ],
    );
  }
}
