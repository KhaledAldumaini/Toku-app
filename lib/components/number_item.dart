import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/number_model.dart';

class NumberItem extends StatelessWidget {
  const NumberItem({super.key, required this.number});
  final Number number;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      height: 100,
      color: Color(0xffDEB887),
      child: Row(
        children: [
          Container(color: Colors.white, child: Image.asset(number.imagePath)),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(number.jpName, style: TextStyle(fontSize: 20)),
                Text(number.enName, style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(onPressed: (){
              final player = AudioPlayer();
              player.play(AssetSource('sounds/numbers/number_one_sound.mp3'));
            }, icon: Icon(Icons.play_arrow,size: 30,)),
          ),
        ],
      ),
    );
  }
}
