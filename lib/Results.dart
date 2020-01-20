import 'package:flutter/material.dart';

class Results extends StatefulWidget {

  final String userInput;
  final String cpuInput;
  final String result;

  Results(this.userInput, this.cpuInput, this.result);

  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text("CPU"),
            Text(widget.cpuInput),
          ],
        ),
        Text(widget.result),
        Column(
          children: <Widget>[
            Text("User"),
            Text(widget.userInput),
          ],
        ),
      ],
    );
  }
}
