import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class Roller extends StatefulWidget {
  const Roller({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RollerState createState() => _RollerState();
}

class _RollerState extends State<Roller> {
  late int diceValue;
  late int newDiceValue;
  late bool _rolling;

  @override
  void initState() {
    super.initState();
    diceValue = 1;
    _rolling = false;
  }

  Future<void> rollDice() async {
    setState(() {
      _rolling = true;
    });
    await Future.delayed(
        const Duration(milliseconds: 500)); // Simulate rolling time

    setState(() {
      newDiceValue = 1 + Random().nextInt(6);
      diceValue = newDiceValue;
      _rolling = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 94, 253),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: _rolling
                  ? SizedBox(
                      key: ValueKey<int>(diceValue),
                      child: AnimatedFlip(
                        key: ValueKey<int>(diceValue),
                        child: Image.asset(
                          "assets/images/dice-$diceValue.png",
                          width: 200,
                          height: 200,
                        ),
                      ),
                    )
                  : SizedBox(
                      key: ValueKey<int>(diceValue),
                      child: Image.asset(
                        "assets/images/dice-$diceValue.png",
                        width: 200,
                        height: 200,
                      ),
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

class AnimatedFlip extends StatefulWidget {
  final Widget child;

  const AnimatedFlip({Key? key, required this.child}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedFlipState createState() => _AnimatedFlipState();
}

class _AnimatedFlipState extends State<AnimatedFlip>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _animation,
      child: widget.child,
    );
  }
}
