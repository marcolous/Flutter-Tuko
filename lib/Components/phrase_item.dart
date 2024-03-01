// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print, must_be_immutable
import 'package:flutter/material.dart';
//import 'package:tuko_app/models/default.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:tuko_app/models/phrase.dart';

class Phrase_Item extends StatelessWidget {
  Phrase_Item({super.key, this.def});
  Phrase? def;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    def!.textJP!,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Varela_Round',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    def!.textEN!,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Varela_Round',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(flex: 1),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(def!.sound!));
                },
                icon: Icon(Icons.play_circle),
                iconSize: 36,
                color: def?.colorButton,
              ),
            ),
          ],
        ),
        Divider(
          height: 1,
          color: Colors.blue,
          thickness: 1,
        )
      ],
    );
  }
}
