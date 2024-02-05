import 'package:flutter/material.dart';
import 'package:quiz_app/answerbutton.dart';
import 'package:quiz_app/data/data.dart';
import "package:google_fonts/google_fonts.dart";

// ignore: must_be_immutable
class Question extends StatefulWidget {
  Question({super.key, required this.chosenAnswer});

  void Function(String selectedanswer) chosenAnswer;

  @override
  // ignore: library_private_types_in_public_api
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  int currentQuestionIndex = 0;

  void onPressButton(answer) {
    widget.chosenAnswer(answer);

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Container(
      color: const Color.fromARGB(
        255,
        198,
        106,
        248,
      ),
      child: Container(
        margin: const EdgeInsets.all(40),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.text,
                style: GoogleFonts.lato(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 255, 255, 255)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              ...currentQuestion.getShuffleList().map((answer) {
                return AnswerButton(
                  text: answer,
                  onPressed: () {
                    onPressButton(answer);
                  },
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
