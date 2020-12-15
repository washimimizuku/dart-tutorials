import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded generateKey({Color color, int keyNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(keyNumber);
        },
        color: color,
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              generateKey(color: Colors.red, keyNumber: 1),
              generateKey(color: Colors.orange, keyNumber: 2),
              generateKey(color: Colors.yellow, keyNumber: 3),
              generateKey(color: Colors.green, keyNumber: 4),
              generateKey(color: Colors.teal, keyNumber: 5),
              generateKey(color: Colors.blue, keyNumber: 6),
              generateKey(color: Colors.purple, keyNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
