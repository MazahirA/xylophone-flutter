import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneApp extends StatelessWidget {
  XylophoneApp({super.key});
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: InkWell(
              child: const Card(
                color: Colors.red,
              ),
              onTap: () async {
                await player.play(AssetSource('note1.wav'));
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: const Card(
                color: Colors.orange,
              ),
              onTap: () async {
                await player.play(AssetSource('note2.wav'));
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: const Card(
                color: Colors.yellow,
              ),
              onTap: () async {
                await player.play(AssetSource('note3.wav'));
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: const Card(
                color: Colors.green,
              ),
              onTap: () async {
                await player.play(AssetSource('note4.wav'));
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: const Card(
                color: Colors.blue,
              ),
              onTap: () async {
                await player.play(AssetSource('note5.wav'));
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: const Card(
                color: Colors.indigo,
              ),
              onTap: () async {
                await player.play(AssetSource('note6.wav'));
              },
            ),
          ),
          Expanded(
            child: InkWell(
              child: const Card(
                color: Colors.deepPurple,
              ),
              onTap: () async {
                await player.play(AssetSource('note7.wav'));
              },
            ),
          ),
        ],
      ),
    );
  }
}
