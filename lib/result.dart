import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() restartQuiz;

  Result(this.score, this.restartQuiz);

  String get message {
    if (score > 35) {
      return "Excelente";
    } else if (score > 25) {
      return "Muito Bom";
    } else if (score > 15) {
      return "Tem que melhorar";
    } else {
      return "Não ta manjando nada";
    }
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            message,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: restartQuiz,
          child: Text(
            'Reiniciar ?',
            style: TextStyle(color: Colors.blue),
          ),
        )
      ],
    );
  }
}
