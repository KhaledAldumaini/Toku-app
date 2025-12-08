import 'package:flutter/material.dart';
import 'package:toku/components/family_item.dart';
import 'package:toku/models/family_member.dart';

class FamilyMemberPage extends StatelessWidget {
  const FamilyMemberPage({super.key});

  final List<FamilyMemberModel> familyMembers = const [
    FamilyMemberModel(
      imagePath: 'assets/images/family_members/family_father.png',
      jpName: 'Chichi',
      enName: 'Father',
      sound: 'sounds/family_members/father.wav',
    ),
    FamilyMemberModel(
      imagePath: 'assets/images/family_members/family_mother.png',
      jpName: 'Haha',
      enName: 'Mother',
      sound: 'sounds/family_members/mother.wav',
    ),
    FamilyMemberModel(
      imagePath: 'assets/images/family_members/family_grandfather.png',
      jpName: 'ojiisan',
      enName: 'Grandfather',
      sound: 'sounds/family_members/grand father.wav',
    ),
    FamilyMemberModel(
      imagePath: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'Grandmother',
      sound: 'sounds/family_members/grand mother.wav',
    ),
    FamilyMemberModel(
      imagePath: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'Son',
      sound: 'sounds/family_members/son.wav',
    ),
    FamilyMemberModel(
      imagePath: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'Daughter',
      sound: 'sounds/family_members/daughter.wav',
    ),
    FamilyMemberModel(
      imagePath: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'Younger Sister',
      sound: 'sounds/family_members/younger sister.wav',
    ),
    FamilyMemberModel(
      imagePath: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'Younger Brother',
      sound: 'sounds/family_members/younger brohter.wav',
    ),
    FamilyMemberModel(
      imagePath: 'assets/images/family_members/family_older_brother.png',
      jpName: 'onīsan',
      enName: 'Older Brother',
      sound: 'sounds/family_members/older bother.wav',
    ),
    FamilyMemberModel(
      imagePath: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'Older Sister',
      sound: 'sounds/family_members/older sister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        title: Text(
          'family Members',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Color(0xff463228),
      ),

      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return FamilyItem(
            color: Color(0xa0DA7523),
            member: familyMembers[index],
          );
        },
      ),
    );
  }
}
