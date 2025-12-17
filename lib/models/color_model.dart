import 'package:audioplayers/audioplayers.dart';

class ColorModel {
  const ColorModel({
    required this.imagePath,
    required this.jpName,
    required this.enName,
    required this.sound,
  });

  final String imagePath;
  final String jpName;
  final String enName;
  final String sound;

  void playSound(){
    final player = AudioPlayer();
    player.play(AssetSource(this.sound));
  }

}
