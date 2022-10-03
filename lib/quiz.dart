import 'dart:html';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:quizapp/question.dart';

import './answer.dart';
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final questionindex;
  final answerQuestion;
  Quiz(this.questions, this.answerQuestion, this.questionindex);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[questionindex]['questionText'] as String,
      ),
      ...(questions[questionindex]['answers'] as List<Map<String, Object>>).map((answer) {
        return Answer(()=>answerQuestion(answer['score']), answer['text']as String);
      }).toList()
    ]);
  }
}
