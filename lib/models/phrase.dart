// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print, must_be_immutable
import 'package:flutter/material.dart';

class Phrase {
  Phrase({this.textEN, this.textJP, this.sound});

  String? textEN;
  String? textJP;
  String? sound;
  Color? colorButton = Colors.blue[500];
}
