import 'package:flutter/material.dart';
import 'package:toku/components/phrase_item.dart';
import 'package:toku/models/phrase_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<PhraseModel> phrases = const [
    PhraseModel(
      jpName: 'Kimasu ka?',
      enName: 'Are you coming?',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    PhraseModel(
      jpName: 'Wasurezu ni tōroku shite kudasai',
      enName: "Don't forget to subscribe",
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    PhraseModel(
      jpName: 'Ogenki desu ka?',
      enName: 'How are you?',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    PhraseModel(
      jpName: 'Anime ga daisuki desu',
      enName: 'I love anime',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    PhraseModel(
      jpName: 'Puroguramingu ga daisuki des',
      enName: 'I love programming',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    PhraseModel(
      jpName: 'Puroguramingu wa kantan desu',
      enName: 'Programming is easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    PhraseModel(
      jpName: 'Onamae wa nan desu ka?',
      enName: 'What is your name?',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),

    PhraseModel(
      jpName: 'Doko ni ikimasu ka?',
      enName: 'Where are you going?',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    PhraseModel(
      jpName: 'Watashi wa ikimasu',
      enName: "Yes, I'm coming.",
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        title: Text(
          'Phrases',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Color(0xff463228),
      ),

      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhraseItem(
            //color: Color(0xa0DA7523),
            phrase: phrases[index],
          );
        },
      ),
    );
  }
}
