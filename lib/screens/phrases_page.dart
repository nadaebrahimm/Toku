import 'package:flutter/material.dart';
import 'package:toku/models/item.dart';

import '../components/phrase_item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  final List<ItemModel> phrases = const [
    ItemModel(
      sound: 'sounds/phrases/what_is_your_name.wav',
      jpName: 'Anata no namae wa nan desu ka?',
      enName: 'What is your name?',
    ),
    ItemModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'Kuru no?',
      enName: 'Are you coming?',
    ),
    ItemModel(
      sound: 'sounds/phrases/i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu ga daisuki',
      enName: 'I Love programming',
    ),
    ItemModel(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      jpName: 'Choushi wa dou desu ka?',
      enName: 'How Are You Feeling?',
    ),
    ItemModel(
      sound: 'sounds/phrases/where_are_you_going.wav',
      jpName: 'Doko ni iku no desu ka?',
      enName: 'whare are you going?',
    ),
    ItemModel(
      sound: 'sounds/phrases/i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisuki desu',
      enName: 'i love anime',
    ),
    ItemModel(
      sound: 'sounds/phrases/programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantan desu',
      enName: 'programming is easy',
    ),
    ItemModel(
      sound: 'sounds/phrases/yes_im_coming.wav',
      jpName: 'Hai, ikimasu',
      enName: 'yes, iam coming',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
        backgroundColor: const Color(0xffa8705e),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            color: const Color(0xff50ADC7),
            item: phrases[index],
          );
        },
      ),
    );
  }

}