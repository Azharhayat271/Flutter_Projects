import 'package:flutter/material.dart';
import 'package:quiz_app/startscreen.dart';
import "package:quiz_app/question.dart";

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  late Widget activeScreen; // Declare activeScreen here

  @override
  void initState() {
    super.initState();
    // Initialize activeScreen in initState
    activeScreen = StartScreen(changeScreen);
  }

  void changeScreen() {
    setState(() {
      activeScreen = const Question();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: activeScreen,
      ),
    );
  }
}
