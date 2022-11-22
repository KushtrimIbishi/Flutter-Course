import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion; // must be Function not VoidCallback
  final int index;
 
  const Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.index});
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[index]['questionText'] as String),
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map(
              // added score as separate parameter
              // answerQuestion needed '()', I don't know why
              (answer) => Answer(answerQuestion(), answer['text'] as String,
                  answer['score'] as int),
            )
            .toList(),
      ],
    );
  }
}