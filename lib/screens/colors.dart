// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print, must_be_immutable
import 'package:flutter/material.dart';
import 'package:tuko_app/Components/item.dart';
import 'package:tuko_app/models/color.dart';

class Clrs extends StatelessWidget {
  Clrs({Key? key}) : super(key: key);
  List<Clr> clr = [
    Clr(
      image: 'assets/images/colors/color_black.png',
      textJP: 'Kuro',
      textEN: 'Black',
      sound: 'sounds/colors/black.wav',
    ),
    Clr(
      image: 'assets/images/colors/color_brown.png',
      textJP: 'Chairo',
      textEN: 'Brown',
      sound: 'sounds/colors/brown.wav',
    ),
    Clr(
      image: 'assets/images/colors/color_gray.png',
      textJP: 'Gurē',
      textEN: 'Gray',
      sound: 'sounds/colors/gray.wav',
    ),
    Clr(
      image: 'assets/images/colors/color_green.png',
      textJP: 'Midori',
      textEN: 'Green',
      sound: 'sounds/colors/green.wav',
    ),
    Clr(
      image: 'assets/images/colors/color_red.png',
      textJP: 'Aka',
      textEN: 'Red',
      sound: 'sounds/colors/red.wav',
    ),
    Clr(
      image: 'assets/images/colors/color_white.png',
      textJP: 'Shiro',
      textEN: 'White',
      sound: 'sounds/colors/white.wav',
    ),
    Clr(
      image: 'assets/images/colors/yellow.png',
      textJP: 'Kiiro',
      textEN: 'Yellow',
      sound: 'sounds/colors/yellow.wav',
    ),
    Clr(
      image: 'assets/images/colors/blue.png',
      textJP: 'Ao',
      textEN: 'Blue',
      sound: 'sounds/colors/blue.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Family Members',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.purple[100],
        child: ListView.builder(
          itemCount: clr.length,
          itemBuilder: (context, index) {
            return Item(def: clr[index]);
          },
        ),
      ),
    );
  }
}
