// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print, must_be_immutable
import 'package:flutter/material.dart';
import 'package:tuko_app/Components/item.dart';
import 'package:tuko_app/models/numbers.dart';

class Numbers extends StatelessWidget {
  Numbers({Key? key}) : super(key: key);
  List<Number> number = [
    Number(
      image: 'assets/images/numbers/number_one.png',
      textJP: 'Ichi',
      textEN: 'One',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_two.png',
      textJP: 'Ni',
      textEN: 'Two',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_three.png',
      textJP: 'San',
      textEN: 'Three',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_four.png',
      textJP: 'Shi',
      textEN: 'Four',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_five.png',
      textJP: 'Go',
      textEN: 'Five',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    Number(
        image: 'assets/images/numbers/number_six.png',
        textJP: 'Rok',
        textEN: 'Six',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_seven.png',
        textJP: 'Shichi',
        textEN: 'Seven',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_eight.png',
        textJP: 'Hachi',
        textEN: 'Eight',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_nine.png',
        textJP: 'Kyuu',
        textEN: 'Nine',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_ten.png',
        textJP: 'Juu',
        textEN: 'Ten',
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.orange[100],
        child: ListView.builder(
          itemCount: number.length,
          itemBuilder: (context, index) {
            return Item(def: number[index]);
          },
        ),
      ),
    );
  }
}
