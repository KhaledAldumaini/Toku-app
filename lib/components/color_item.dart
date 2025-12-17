import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/color_model.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.color,
    required this.containerColor,
  });
  final ColorModel color;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      height: 100,
      color: containerColor,
      child: Row(
        children: [
          Container(color: Colors.white, child: Image.asset(color.imagePath)),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(color.jpName, style: TextStyle(fontSize: 20)),
                Text(color.enName, style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                color.playSound();
              },
              icon: Icon(Icons.play_arrow, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}
