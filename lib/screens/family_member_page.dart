import 'package:flutter/material.dart';
import 'package:toku/components/family_item.dart';
import 'package:toku/models/family_member.dart';



class FamilyMemberPage extends StatelessWidget {
  const FamilyMemberPage({super.key});

  final List<FamilyMember> familyMembers = const [
    FamilyMember(
      imagePath: 'assets/images/family_members/family_father.png',
      jpName: 'joya',
      enName: 'Father',
      sound: 'sounds/family_members/father.wav',
    ),
    FamilyMember(
      imagePath: 'assets/images/family_members/family_mother.png',
      jpName: 'hahawya',
      enName: 'Mother',
      sound: 'sounds/family_members/mother.wav',
    ),
    FamilyMember(
      imagePath: 'assets/images/family_members/family_grandfather.png',
      jpName: 'San',
      enName: 'Grandfather',
      sound: 'sounds/family_members/grand father.wav',
    ),
    FamilyMember(
      imagePath: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Shi',
      enName: 'Grandmother',
      sound: 'sounds/family_members/grand mother.wav',
    ),
    FamilyMember(
      imagePath: 'assets/images/family_members/family_son.png',
      jpName: 'Go',
      enName: 'Son',
      sound: 'sounds/family_members/son.wav',
    ),
    FamilyMember(
      imagePath: 'assets/images/family_members/family_daughter.png',
      jpName: 'Roku',
      enName: 'Daughter',
      sound: 'sounds/family_members/daughter.wav',
    ),
    FamilyMember(
      imagePath: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Sebun',
      enName: 'Younger Sister',
      sound: 'sounds/family_members/younger sister.wav',
    ),
    FamilyMember(
      imagePath: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'hechi',
      enName: 'Younger Brother',
      sound: 'sounds/family_members/younger brohter.wav',
    ),
    FamilyMember(
      imagePath: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Kyu',
      enName: 'Older Brother',
      sound: 'sounds/family_members/older bother.wav',
    ),
    FamilyMember(
      imagePath: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ju',
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
          return FamilyItem(member: familyMembers[index]);
        },
      ),
    );
  }

}
