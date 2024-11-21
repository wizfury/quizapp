
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionumber = 0;

  void annswers() {
    setState(() {
      questionumber++;
    }); 
    print(questionumber);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'Hello, how u doin\'',
      'Howz monica',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Text(question[questionumber]),
            ElevatedButton(
              child: Text('Good'),
              onPressed: annswers,
            ),
            ElevatedButton(
              child: Text('Nice'),
              onPressed: () => print('nice'),
            ),
            ElevatedButton(
              child: Text('I\'m doing fine'),
              onPressed: () => print('Joey'),
            ),
          ],
        ),
      ),
    );
  }
}
