import 'package:flutter/material.dart';
import "package:flutter_application_1/roller.dart";

const text = "FLutter Development";

void main() {
  runApp(const MaterialApp(
    title: "My App",
    home: Scaffold(body: Roller()),
  ));
}
