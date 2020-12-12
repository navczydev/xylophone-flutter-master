import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound({int noteNumber, int secondNumber}) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Widget buildKey(MaterialColor materialColor, int noteNumber) {
    return Expanded(
      child: FlatButton(
        color: materialColor,
        onPressed: () {
          playSound(noteNumber: noteNumber, secondNumber: 0);
        },
        child: Text('Play audio from asset'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SafeArea(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildKey(Colors.teal, 1),
                  buildKey(Colors.red, 2),
                  buildKey(Colors.yellow, 3),
                  buildKey(Colors.green, 4),
                  buildKey(Colors.orange, 5),
                  buildKey(Colors.lime, 6),
                  buildKey(Colors.grey, 7),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
