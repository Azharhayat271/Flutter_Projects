import "package:flutter/material.dart";

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 198, 106, 248),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Image(
                image: AssetImage("assets/quiz-logo.png"),
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Learn Flutter in Amazing Way!",
              style: TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 247, 247, 252),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  disabledBackgroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 249, 249, 249),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 10,
                  ),
                ),
                icon: const Icon(Icons.play_arrow),
                onPressed: () {},
                label: const Text(
                  "Start Quiz",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 198, 106, 248),
                    fontWeight: FontWeight.bold,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
