import 'package:flutter/material.dart';
import './quiz.dart';
import 'answer.dart';
import 'result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'Blue'],
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': ['Cat', 'Dog', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\s your favorite instructor',
      'answers': ['Kusha', 'Xhaxhi', 'Doni', 'Luta'],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    // var aBool = true;
    // aBool = false;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = ['Hello'];
    // dummy.add('Kusha');
    // print(dummy);

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result()),
    );
  }
}
