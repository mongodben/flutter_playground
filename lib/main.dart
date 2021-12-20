import 'package:flutter/material.dart';
import './questions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s for dinner?',
      'what\'s for lunch?',
      'what\'s for breakfast?',
    ];

    void answerQuestion() {
      print('question answered');
    }

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My special app'),
            ),
            body: const Questions()));
  }
}
