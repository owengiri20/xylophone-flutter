import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = new AudioCache();
    player.play("note$note.wav");
  }
  List<int> notes = [1,2,3,4,5,6,7];
  List<Color> colours = [
    Colors.amber,
    Colors.pink,
    Colors.yellowAccent,
    Colors.red,
    Colors.blue,
    Colors.brown,
    Colors.green,
    Colors.lightBlueAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                for (var i in notes) (
                    FlatButton(
                      padding: EdgeInsets.all(0),
                      color: colours[i],
                      onPressed: () {
                        playSound(i);
                      },
                      child: Text("note $i"),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
