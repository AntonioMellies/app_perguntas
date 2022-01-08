import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  Result(this.score);

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
    return Center(child: Text(message, style: TextStyle(fontSize: 28)));
  }
}
