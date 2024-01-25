import 'package:flutter/material.dart';

//create a class to add a background gradient
class GradientClass extends StatelessWidget {
  const GradientClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //add a gradient to the background
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(0, 0, 0, 1),
            Color.fromRGBO(0, 0, 0, 0.8),
            Color.fromRGBO(0, 0, 0, 0.6),
            Color.fromRGBO(0, 0, 0, 0.4),
            Color.fromRGBO(0, 0, 0, 0.2),
            Color.fromRGBO(0, 0, 0, 0),
          ],
        ),
      ),
    );
  }
}
