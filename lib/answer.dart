import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() onSelection;

  Answer(this.text, this.onSelection);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        child: Text(text),
        onPressed: onSelection,
      ),
    );
  }
}
