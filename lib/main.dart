import 'package:flutter/material.dart';
import 'dart:math';

import 'Controls.dart';
import 'Results.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String userInput = "";
  String cpuInput = "";
  String result = "";

  int generateCpuInput() {
    var rand = Random();
    int choiceNumber = rand.nextInt(3);//Provides us a num between 0 to 2 randomly
    setState(() {
      if (choiceNumber == 0) {
        cpuInput = "Rock";
      } else if (choiceNumber == 1) {
        cpuInput = "Paper";
      } else {
        cpuInput = "Scissors";
      }
    });
    return choiceNumber;
  }

  void generateUserInput(int choice) {
    setState(() {
      if (choice == 0) {
        userInput = "Rock";
      } else if (choice == 1) {
        userInput = "Paper";
      } else {
        userInput = "Scissors";
      }
    });
  }

  void playGame (int userChoice) {
    int computerChoice = generateCpuInput();
    generateUserInput(userChoice);
    setState(() {
      if (userChoice == computerChoice) {
        result = "DRAW";
      } else if (userChoice == 0) {
        if (computerChoice == 1) {
          result = "WIN";
        } else {
          result = "LOSS";
        }
      } else if (userChoice == 1) {
        if (computerChoice == 0) {
          result = "WIN";
        } else {
          result = "LOSS";
        }
      } else {
        if (computerChoice == 0) {
          result = "LOSS";
        } else {
          result = "WIN";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Rock Paper Scissors",
            style: TextStyle(color: Colors.amber),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Results(userInput, cpuInput, result),
            Controls(playGame),
          ],
        ),
      ),
    );
  }
}
