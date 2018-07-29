import 'package:flutter/material.dart';
import '../main.dart' as main;

class addNewRounds extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Add New Rounds"),
          backgroundColor: Color.fromRGBO(255, 99, 71, 0.8),
        ),
        body: new Center(
          child: new ListView.builder(
            itemCount: main.playerNumber,
            itemBuilder: (context,i){
              return new Column(
                children: <Widget>[
                  /*
                  new Image.network('http://siliconvalleyism.com/characters/jian-yang-small.jpg',
                    scale: 1.0,
                    width: 64.0,
                    height: 64.0,
                    alignment: Alignment.topLeft,
                  ),
                  new TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Please enter a player name'
                    ),
                  ),
                  */
                  new Row(
                    children: <Widget>[
                      new Image.network('http://siliconvalleyism.com/characters/jian-yang-small.jpg',
                        scale: 1.0,
                        width: 64.0,
                        height: 64.0,
                        alignment: Alignment.topLeft,
                      ),
                      new TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Please enter a player name'
                        ),
                      ),
                    ],
                  ),
                  new Divider()
                ],
              );
            },
            
          )
        ),
      );
    }
}