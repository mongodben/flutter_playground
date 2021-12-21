import 'package:flutter/material.dart';

class AnswerMessage extends StatelessWidget {
  final bool? answer;
  final String realAnswer;

  AnswerMessage(this.answer, this.realAnswer);

  @override
  Widget build(BuildContext context) {
    if (answer == true) {
      return Text('yaas. ${realAnswer} is being served');
    } else if (answer == false) {
      return const Text('nop');
    } else {
      return Container();
    }
  }
}
