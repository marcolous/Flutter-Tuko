// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print, must_be_immutable
import 'package:flutter/material.dart';
import 'package:tuko_app/Components/item.dart';
import 'package:tuko_app/models/fam.dart';

class Family extends StatelessWidget {
  Family({Key? key}) : super(key: key);
  List<Fam> family = [
    Fam(
      image: 'assets/images/family_members/family_father.png',
      textJP: 'Chichi',
      textEN: 'Father',
      sound: 'sounds/family_members/father.wav',
    ),
    Fam(
      image: 'assets/images/family_members/family_mother.png',
      textJP: 'Haha',
      textEN: 'Mother',
      sound: 'sounds/family_members/mother.wav',
    ),
    Fam(
      image: 'assets/images/family_members/family_son.png',
      textJP: 'Musuko',
      textEN: 'Son',
      sound: 'sounds/family_members/son.wav',
    ),
    Fam(
      image: 'assets/images/family_members/family_daughter.png',
      textJP: 'Musume',
      textEN: 'Daughter',
      sound: 'sounds/family_members/daughter.wav',
    ),
    Fam(
      image: 'assets/images/family_members/family_older_brother.png',
      textJP: 'Ani',
      textEN: 'Older Brother',
      sound: 'sounds/family_members/older bother.wav',
    ),
    Fam(
      image: 'assets/images/family_members/family_older_sister.png',
      textJP: 'Ane',
      textEN: 'Older Sister',
      sound: 'sounds/family_members/older sister.wav',
    ),
    Fam(
      image: 'assets/images/family_members/family_younger_brother.png',
      textJP: 'Otouto',
      textEN: 'Younger Brother',
      sound: 'sounds/family_members/younger brohter.wav',
    ),
    Fam(
      image: 'assets/images/family_members/family_younger_sister.png',
      textJP: 'Imouto',
      textEN: 'Younger Sister',
      sound: 'sounds/family_members/younger sister.wav',
    ),
    Fam(
      image: 'assets/images/family_members/family_grandfather.png',
      textJP: 'Sofu',
      textEN: 'Grandfather',
      sound: 'sounds/family_members/grand father.wav',
    ),
    Fam(
      image: 'assets/images/family_members/family_grandmother.png',
      textJP: 'Sobo',
      textEN: 'Grandmother',
      sound: 'sounds/family_members/grand mother.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Family Members',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.green[100],
        child: ListView.builder(
          itemCount: family.length,
          itemBuilder: (context, index) {
            return Item(def: family[index]);
          },
        ),
      ),
    );
  }
}
