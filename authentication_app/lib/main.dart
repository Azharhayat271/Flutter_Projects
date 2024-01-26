import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Simple Login Page",
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 66, 205, 247),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 66, 205, 247),
        title: const Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText: "Username",
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Login"),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Forgot"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}
