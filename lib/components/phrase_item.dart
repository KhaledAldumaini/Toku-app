import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/phrase_model.dart';

class PhraseItem extends StatelessWidget {
  const PhraseItem({super.key, required this.phrase});
  final PhraseModel phrase;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      height: 100,
      color: Color(0xffD2B48C),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(phrase.jpName, style: TextStyle(fontSize: 20)),
                Text(phrase.enName, style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                phrase.playSound();
              },
              icon: Icon(Icons.play_arrow, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}
