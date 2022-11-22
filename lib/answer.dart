import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;  // must be Function not VoidCallback
  final String answerText;
  final int score; // score as third parameter, here and in constructor below
 
  const Answer(this.selectHandler, this.answerText, this.score);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: ElevatedButton(
        // turned into anonymous function and inserted property 'score'
        onPressed: () => selectHandler(score),
        child: Text(answerText),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.indigo[600]),
            foregroundColor: MaterialStateProperty.all(Colors.white)),
      ),
    );
  }
}
