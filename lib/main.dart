// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:flutter/material.dart';
import 'package:tuko_app/screens/home_page.dart';

void main() {
  runApp(const Toku());
}

class Toku extends StatefulWidget {
  const Toku({Key? key}) : super(key: key);

  @override
  State<Toku> createState() => _TokuState();
}

class _TokuState extends State<Toku> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
