import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionindex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your fav color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your fav animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Snake', 'score': 10},
        {'text': 'Dog', 'score': 1},
        {'text': 'Lion', 'socre': 7}
      ]
    },
    {
      'questionText': 'What\'s your fav instructor',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'John', 'score': 1},
        {'text': 'Amim', 'score': 1},
        {'text': 'angela', 'score': 1},
      ]
    }
  ];
  var _totalscore = 0;
  void _resetQuiz() {
    setState(() {
      _questionindex = 0;
      _totalscore = 0;
    });
    
  }

  void _answerQuestion(int score) {
    _totalscore += score;

    setState(() {
      _questionindex++;
    });
    print(_questionindex);
    if (_questionindex < _questions.length) {
      print('We Have more questions');
    } else {
      print("No more question");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Quiz App"),
            ),
            body: (_questionindex < _questions.length)
                ? Quiz(
                    _questions,
                    _answerQuestion,
                    _questionindex,
                  )
                : result(_totalscore,_resetQuiz)));
  }
}
