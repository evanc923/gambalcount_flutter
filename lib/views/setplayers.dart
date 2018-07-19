import 'package:flutter/material.dart';
class setPlayers extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Set Players Numbers"),
          backgroundColor: Color.fromRGBO(255, 99, 71, 0.8),
        ),
        body: new Center(
          child: new Text("How many players in this game?")
        )
      );
    }
}