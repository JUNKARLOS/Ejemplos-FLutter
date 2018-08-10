import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My app title',
        home: Scaffold(
            body: Center(
                child: PlayerWidget()
            )
        )
    );
  }
}

class PlayerWidget extends StatefulWidget {

  @override
  State<PlayerWidget> createState() {
    return new _PlayerWidgetState();
  }
}

class _PlayerWidgetState extends State<PlayerWidget> {
  bool _isPlaying = false;

  void _playerClick(){
    setState((){
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
                icon: _isPlaying ? Icon(Icons.pause) :  Icon(Icons.play_arrow),
                iconSize: 150.0,
                onPressed: () {_playerClick();}),
            Text(_isPlaying ?'Pause':'Play',style: new TextStyle(fontSize: 24.0),)
          ],
        )
    );
  }
}