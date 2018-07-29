import 'package:flutter/material.dart';
import './views/setplayers.dart';
import './views/addnewrounds.dart';

var themeColor = Color.fromRGBO(255, 99, 71, 0.8);

int playerNumber = 0;

var playersName = [];


void main() => runApp(new MaterialApp(home: gambalCountersApp()));

class gambalCountersApp extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return new gambalCountersState();
    }
}

class gambalCountersState extends State<gambalCountersApp>{
  
  @override
    Widget build(BuildContext context) {

      void _setPlayers(){
        Navigator.push(context,
        new MaterialPageRoute( builder: (context) => new setPlayers())
        );
      }

      void _addNewRounds(){
        Navigator.push(context,
        new MaterialPageRoute( builder: (context) => new addNewRounds())
        );
      }

      return new Scaffold(
        appBar: new AppBar(
          title: new Text("GambalCounter"),
          backgroundColor: Color.fromRGBO(255, 99, 71, 0.8),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.settings), onPressed:(){
              showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
              return new Container(
                child: new Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: setPlayers()
                ),
              );
            });
            })
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: new Icon(Icons.add),
          backgroundColor: Color.fromRGBO(255, 99, 71, 0.8),
          onPressed: _addNewRounds,
        ),
      );
    }
}
