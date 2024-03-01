// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Categry extends StatelessWidget {
  Categry({this.text, this.color, this.onTap});
  String? text;
  Color? color;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 10),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 62,
        color: color,
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
