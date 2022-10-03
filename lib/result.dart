

import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int resultscore;
  final VoidCallback resetHandler;

  result(this.resultscore, this.resetHandler);
  String get resultphrase {
    String resulttext;
    if (resultscore <= 8) {
      resulttext = 'You are awsome and innocent!';
    } else if (resultscore <= 12) {
      resulttext = 'Pretty likable';
    } else if (resultscore <= 16) {
      resulttext = 'U are Strange!';
    } else {
      resulttext = 'U are so bad! Fuck off';
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultphrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz!'),
            style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.blue))
          )
        ],
      ),
    );
  }
}
