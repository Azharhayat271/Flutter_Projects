import 'package:flutter/material.dart';
import 'package:quiz_app/startscreen.dart';
import "package:quiz_app/question.dart";
import 'package:quiz_app/data/data.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  late Widget activeScreen; // Declare activeScreen here
  List<String> selectedAnswers = [];

  @override
  void initState() {
    super.initState();
    // Initialize activeScreen in initState
    activeScreen = StartScreen(changeScreen);
  }

  void chosenAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      selectedAnswers = [];
      setState(() {
        activeScreen = StartScreen(changeScreen);
      });
    }
  }

  void changeScreen() {
    setState(() {
      activeScreen = Question(
        chosenAnswer: chosenAnswer,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: activeScreen,
      ),
    );
  }
}
