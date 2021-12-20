import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  static var questions = [
    _QAPair('what\'s for breakfast?', 'pancakes'),
    _QAPair('what\'s for lunch?', 'sandwich'),
    _QAPair('what\'s for dinner?', 'tacos'),
  ];

  var _activeQuestion = questions[0];
  void _activateQuestion(int questionIdx, List<_QAPair> questions) {
    setState(() {
      _activeQuestion = questions[questionIdx];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(_activeQuestion.question),
      Container(
          child: Row(
            children: [
              _OptionButton(Text('breakfast'), () => _activateQuestion(0, questions)),
              _OptionButton(Text('lunch'), () => _activateQuestion(1, questions)),
              _OptionButton(Text('dinner'), () => _activateQuestion(2, questions)),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
      ))
    ]);
  }
}

class _OptionButton extends StatelessWidget {
  final Text child;
  final VoidCallback onPressed;

  const _OptionButton(this.child, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(onPressed: onPressed, child: child),
    );
  }
}

class _QAPair {
  String question;
  String answer;

  _QAPair(this.question, this.answer);
}
