import 'package:flutter/material.dart';

class Controls extends StatelessWidget {

  final Function playGame;

  Controls(this.playGame);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        RaisedButton(
          color: Colors.red,
          child: Text("ROCK"),
          onPressed: () => playGame(0),
        ),
        RaisedButton(
          color: Colors.green,
          child: Text("PAPER"),
          onPressed: () => playGame(1),
        ),
        RaisedButton(
          color: Colors.yellow,
          child: Text("SCISSORS"),
          onPressed: () => playGame(2),
        ),
      ],
    );
  }
}
