import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/family_member.dart';


class FamilyItem extends StatelessWidget {
  const FamilyItem({super.key, required this.member});
  final FamilyMember member;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      height: 100,
      color: Color(0xffDEB887),
      child: Row(
        children: [
          Container(color: Colors.white, child: Image.asset(member.imagePath)),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(member.jpName, style: TextStyle(fontSize: 20)),
                Text(member.enName, style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(onPressed: (){
              final player = AudioPlayer();
              player.play(AssetSource(member.sound));
            }, icon: Icon(Icons.play_arrow,size: 30,)),
          ),
        ],
      ),
    );
  }
}
