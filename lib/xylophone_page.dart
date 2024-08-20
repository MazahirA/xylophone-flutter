import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildXylophoneKey(color: Colors.red,soundNoteNum: 1),
            buildXylophoneKey(color: Colors.orange,soundNoteNum: 2),
            buildXylophoneKey(color: Colors.yellow,soundNoteNum: 3),
            buildXylophoneKey(color: Colors.green,soundNoteNum: 4),
            buildXylophoneKey(color: Colors.blue,soundNoteNum: 5),
            buildXylophoneKey(color: Colors.indigo,soundNoteNum: 6),
            buildXylophoneKey(color: Colors.purple,soundNoteNum: 7),
          ],
        ),
      ),
    );
  }

  ///Play sound according to note number.
  void playSound({required int noteNum}){
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNum.wav'));
  }
  
  ///Build note keys:
  Expanded buildXylophoneKey({required Color color,required int soundNoteNum}){
    return Expanded(
      child: InkWell(
        child:  Card(
          color: color,
        ),
        onTap: ()  {
          playSound(noteNum: soundNoteNum);
        },
      ),
    );
  }
}
