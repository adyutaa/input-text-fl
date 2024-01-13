import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  // controller to get access to what user typed in.
  TextEditingController myController = TextEditingController();

// initialize String for greetUser
  String greetingMessage = "";

  void greetUser() {
    setState(() {
      String userName = myController.text;
      greetingMessage = "Hello, " + userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text greeting message
              Text(greetingMessage),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your name here...",
                ),
              ),

              // button
              ElevatedButton(onPressed: greetUser, child: Text("Tap"))
            ],
          ),
        ),
      ),
    );
  }
}
