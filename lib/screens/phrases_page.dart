import 'package:flutter/material.dart';
import 'package:toku_app/components/phrases_item.dart';
import 'package:toku_app/models/phrases.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  
  final List<Phrases> phrases = const [
    Phrases(jpName: 'Kōdoku suru koto o wasurenaide kudasai', enName: 'don\'t forget to subscribe', audioPlayer: 'assets/sounds/phrases/dont_forget_to_subscribe.wav'),
    Phrases(jpName: 'Watashi wa puroguramingu ga daisukidesu', enName: 'I love programming', audioPlayer: 'assets/sounds/phrases/i_love_programming.wav'),
    Phrases(jpName: 'Puroguramingu wa kantandesu', enName: 'programming is easy', audioPlayer: 'assets/sounds/phrases/programming_is_easy.wav'),
    Phrases(jpName: 'Doko ni iku no', enName: 'where are you going ?', audioPlayer: 'assets/sounds/phrases/where_are_you_going.wav'),
    Phrases(jpName: 'Namae wa nandesu ka', enName: 'what is your name ?', audioPlayer: 'assets/sounds/phrases/what_is_your_name.wav'),
    Phrases(jpName: 'Watashi wa anime ga daisukidesu', enName: 'I love anime', audioPlayer: 'assets/sounds/phrases/i_love_anime.wav'),
    Phrases(jpName: 'Go kibun wa ikagadesu ka', enName: 'How are you feeling ?', audioPlayer: 'assets/sounds/phrases/how_are_you_feeling.wav'),
    Phrases(jpName: 'Kimasu ka', enName: 'Are you coming ?', audioPlayer: 'assets/sounds/phrases/are_you_coming.wav'),
    Phrases(jpName: 'Hai, ikimasu', enName: 'Yes I\'m coming', audioPlayer: 'assets/sounds/phrases/yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xffffeb99),
        ),
        backgroundColor: const Color(0xff001a00),
        title: const Text(
          'Phrases',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Color(0xffffeb99),
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => PhrasesItems(phrases: phrases[index]), 
        separatorBuilder: (context, index) => const Divider(
          color: Color(0xff001a00),
          height: 0,
          thickness: 1,
        ),
        itemCount: phrases.length,
      ),
    );
  }
}