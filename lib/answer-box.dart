import 'package:flutter/material.dart';

class AnswerBox extends StatefulWidget {
  final void Function(String) handleAnswerSubmit;

  AnswerBox({Key? key, required this.handleAnswerSubmit}) : super(key: key);

  @override
  _AnswerBoxState createState() => _AnswerBoxState();
}

class _AnswerBoxState extends State<AnswerBox> {
  var _answerVal = '';
  void onAnswerChange(text) {
    setState(() {
      _answerVal = text;
    });
  }

  void onSubmit() {
    widget.handleAnswerSubmit(_answerVal);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: onAnswerChange,
        ),
        ElevatedButton(
          onPressed: onSubmit, 
          child: const Text('submit answer')
        )
      ],
    );
  }
}
