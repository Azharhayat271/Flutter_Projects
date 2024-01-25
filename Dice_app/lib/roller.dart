import 'package:flutter/material.dart';

class Roller extends StatefulWidget {
  @override
  const Roller({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RollerState createState() => _RollerState();
}

class _RollerState extends State<Roller> {
  int diceValue = 1;

  void rollDice() {
    setState(() {
      diceValue = 1 + (DateTime.now().millisecondsSinceEpoch % 6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 41, 180, 249),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                rollDice();
              },
              child: Image.asset(
                "assets/images/dice-$diceValue.png",
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                rollDice();
              },
              child: const Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
