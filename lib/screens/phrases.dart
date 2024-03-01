// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print, must_be_immutable
import 'package:flutter/material.dart';
import 'package:tuko_app/Components/phrase_item.dart';
import 'package:tuko_app/models/phrase.dart';

class Phrases extends StatelessWidget {
  Phrases({Key? key}) : super(key: key);

  List<Phrase> phrase = [
    Phrase(
      textJP: 'Anata no namae wa nandesuka',
      textEN: 'What is your name',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    Phrase(
      textJP: 'Doko ni iku no',
      textEN: 'Where are you going',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    Phrase(
      textJP: 'Go kibun wa ikagadesu ka',
      textEN: 'How are you feeling',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    Phrase(
      textJP: 'Kimasu ka',
      textEN: 'Are you coming',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    Phrase(
      textJP: 'Hai, ikimasu',
      textEN: 'Yes i\'m coming',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
    Phrase(
      textJP: 'Watashi wa anime ga daisukidesu',
      textEN: 'I love anime',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    Phrase(
      textJP: 'Puroguramingu ga daisukidesu',
      textEN: 'I love programming',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    Phrase(
      textJP: 'Puroguramingu wa kantandesu',
      textEN: 'Programming is easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    Phrase(
      textJP: 'Wasurezu ni kōdoku shite kudasai',
      textEN: 'Do\'nt forget to subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Family Members',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.blue[100],
        child: ListView.builder(
          itemCount: phrase.length,
          itemBuilder: (context, index) {
            return Phrase_Item(def: phrase[index]);
          },
        ),
      ),
    );
  }
}
