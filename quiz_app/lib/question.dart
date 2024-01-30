import "package:flutter/material.dart";
import "package:quiz_app/answerbutton.dart";
import 'package:quiz_app/data/data.dart';

class Question extends StatelessWidget {
  const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentquestion = questions[0];
    return Container(
      // Wrap with Container
      color: const Color.fromARGB(
          255, 198, 106, 248), // Set the background color here
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentquestion.text,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors
                    .white, // Set text color to contrast with the background
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AnswerButton(text: currentquestion.answers[0], onPressed: () {}),
            AnswerButton(text: currentquestion.answers[1], onPressed: () {}),
            AnswerButton(text: currentquestion.answers[2], onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
