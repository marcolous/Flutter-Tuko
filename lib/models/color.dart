// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print, must_be_immutable
import 'package:flutter/material.dart';
import 'package:tuko_app/models/default.dart';

class Clr extends Default {
  Clr({String? image, String? textEN, String? textJP, String? sound})
      : super(image: image, textEN: textEN, textJP: textJP, sound: sound);

  @override
  Color? get colorImage => Colors.purple[300];
  @override
  set colorImage(Color? value) {
    super.colorImage = Colors.purple[300];
  }

  @override
  Color? get colorButton => Colors.purple[500];
  @override
  set colorButton(Color? value) {
    super.colorButton = Colors.purple[500];
  }
}
