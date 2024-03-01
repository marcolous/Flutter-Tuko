// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'package:flutter/material.dart';
import 'package:tuko_app/Components/category_item.dart';
import 'package:tuko_app/screens/colors.dart';
import 'package:tuko_app/screens/family.dart';
import 'package:tuko_app/screens/numbers.dart';
import 'package:tuko_app/screens/phrases.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.brown[200],
        child: Column(
          children: [
            Categry(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Numbers();
                }));
              },
              text: 'Numbers',
              color: Colors.orange,
            ),
            Categry(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Family();
                }));
              },
              text: 'Family Members',
              color: Colors.green,
            ),
            Categry(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Clrs();
                }));
              },
              text: 'Colors',
              color: Colors.purple,
            ),
            Categry(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Phrases();
                }));
              },
              text: 'Phrases',
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
