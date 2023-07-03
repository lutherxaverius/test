import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(xylophone());
}

class xylophone extends StatelessWidget {
  xylophone({super.key});
  void playsound(int number) {
    final player = AudioPlayer();
    player.play(AssetSource('note$number.wav'));
  }

  buildKey({required int soundID, required Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playsound(soundID);
        },
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero
        ),
        child: Container(
            color: color, width: double.infinity, height: 95),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(soundID: 1, color: Colors.red),
                buildKey(soundID: 2, color: Colors.orange),
                buildKey(soundID: 3, color: Colors.yellow),
                buildKey(soundID: 4, color: Colors.green),
                buildKey(soundID: 5, color: Colors.blueGrey),
                buildKey(soundID: 6, color: Colors.blue),
                buildKey(soundID: 7, color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
