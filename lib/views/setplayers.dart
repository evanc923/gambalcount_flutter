import 'package:flutter/material.dart';
import '../main.dart' as main;
class setPlayers extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return new setPlayersState();
    }
}

class setPlayersState extends State<setPlayers> {
  int _playerNumbersInThisClass = main.playerNumber;
  void _addPlayers(){
    setState(() {
         _playerNumbersInThisClass++; 
        });
    main.playerNumber = _playerNumbersInThisClass;
  }

  void _subPlayers(){
    if (main.playerNumber > 0){
      setState(() {
         _playerNumbersInThisClass--; 
        });
      main.playerNumber = _playerNumbersInThisClass;
    }
  }
  @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Set Players Numbers", style: new TextStyle(fontSize: 22.0)),
          backgroundColor: Color.fromRGBO(255, 99, 71, 0.8),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('$_playerNumbersInThisClass',style: new TextStyle(fontSize: 70.0)),
              new Padding(
                padding: new EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new RaisedButton(
                    color: Color.fromRGBO(255, 99, 71, 0.8),
                    child: new Text("-", style: new TextStyle(color: Colors.white, fontSize: 40.0)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    onPressed: _subPlayers,
                  ),
                  new RaisedButton(
                    color: Color.fromRGBO(255, 99, 71, 0.8),
                    child: new Text("+", style: new TextStyle(color: Colors.white, fontSize: 40.0)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    onPressed: _addPlayers,
                  ),
                ],
              ),
              new Padding(
                padding: new EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                    color: Color.fromRGBO(255, 99, 71, 0.8),
                    child: new Text('Next', style: new TextStyle(color: Colors.white, fontSize: 25.0)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    onPressed: _addPlayers,
                  )
                ],
              )
            ],
          ),
        )
      );
    }
}