import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound() {

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                FlatButton(
                  padding: EdgeInsets.all(0),
                  color: Colors.pink,
                  onPressed: () {
                    final player = new AudioCache();
                    player.play("note1.wav");
                  },
                  child: Text("note 1"),
                ),
                FlatButton(
                  padding: EdgeInsets.all(0),
                  color: Colors.blue.shade900,
                  onPressed: () {
                    final player = new AudioCache();
                    player.play("note2.wav");
                  },
                  child: Text("note 2"),
                ),
                FlatButton(
                  padding: EdgeInsets.all(0),
                  color: Colors.grey,
                  onPressed: () {
                    final player = new AudioCache();
                    player.play("note3.wav");
                  },
                  child: Text("note 3"),
                ),
                FlatButton(
                  padding: EdgeInsets.all(0),
                  color: Colors.deepOrangeAccent,
                  onPressed: () {
                    final player = new AudioCache();
                    player.play("note4.wav");
                  },
                  child: Text("note 4"),
                ),
                FlatButton(
                  padding: EdgeInsets.all(0),
                  color: Colors.green,
                  onPressed: () {
                    final player = new AudioCache();
                    player.play("note5.wav");
                  },
                  child: Text("note 5"),
                ),
                FlatButton(
                  padding: EdgeInsets.all(0),
                  color: Colors.yellowAccent,
                  onPressed: () {
                    final player = new AudioCache();
                    player.play("note6.wav");
                  },
                  child: Text("note 6"),
                ),
                FlatButton(
                  padding: EdgeInsets.all(0),
                  color: Colors.amber,
                  onPressed: () {
                    final player = new AudioCache();
                    player.play("note7.wav");
                  },
                  child: Text("note 7"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
