import 'package:flutter/material.dart';
import 'package:quiz_app/data/data.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.selectedAnswers, {Key? key}) : super(key: key);

  final List<String> selectedAnswers;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        "index": i + 1,
        "question": questions[i].text,
        "answer": selectedAnswers[i],
        "correctAnswer": questions[i].answers[0],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Results'),
      ),
      body: Container(
        color: const Color.fromARGB(
          255,
          198,
          106,
          248,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align all content to the left
            children: [
              const Text(
                "You have completed the quiz!",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // Align all content to the left
                    children: getSummary().map((e) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Align all content to the left
                        children: [
                          Text(
                            "Question ${e["index"]}",
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            "You answered: ${e["answer"]}",
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.yellow, // Change the color
                              fontWeight:
                                  FontWeight.bold, // Change the font weight
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            "Correct answer: ${e["correctAnswer"]}",
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.green, // Change the color
                              fontWeight:
                                  FontWeight.bold, // Change the font weight
                            ),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: 20),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Restart Quiz"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
