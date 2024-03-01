// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print, must_be_immutable
import 'package:flutter/material.dart';
import 'package:tuko_app/models/default.dart';
import 'package:audioplayers/audioplayers.dart';

class Item extends StatelessWidget {
  Item({super.key, this.def});
  Default? def;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(color: def?.colorImage),
              child: def?.image != null ? Image.asset(def!.image!) : SizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    def?.textJP ?? "",
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'Varela_Round',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    def?.textEN ?? "",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Varela_Round',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(flex: 5),
            IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(def!.sound!));
              },
              icon: Icon(Icons.play_circle),
              iconSize: 36,
              color: def?.colorButton,
            ),
            Spacer(flex: 1),
          ],
        ),
        Divider(
          height: 1,
          color: def?.colorButton,
          thickness: 1,
        )
      ],
    );
  }
}
