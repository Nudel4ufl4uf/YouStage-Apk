import 'package:flutter/material.dart';
import './CategorieGridBuilder.dart';

class CategorieGrid extends StatelessWidget {
  CategorieGrid();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(30),
          sliver: SliverGrid.count(
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            crossAxisCount: 1,
            childAspectRatio: 16 / 5,
            children: <Widget>[
              CategorieGridBuilder(
                  'assets/icons/confetti.png',
                  "YouStage\nOpening",
                  Colors.pink[800],
                  Colors.pink[500],
                  Colors.pink[200]),
              CategorieGridBuilder(
                  'assets/icons/music-note.png',
                  "Wohnzimmer\nKonzerte",
                  Colors.blue[800],
                  Colors.blue[500],
                  Colors.blue[200]),
              CategorieGridBuilder(
                  'assets/icons/laughing.png',
                  "Klassische\nComedy",
                  Colors.orange[800],
                  Colors.orange[500],
                  Colors.orange[200]),
              CategorieGridBuilder(
                  'assets/icons/mic.png',
                  "Mic\nDrop",
                  Colors.green[800],
                  Colors.green[500],
                  Colors.green[200]),
              CategorieGridBuilder(
                  'assets/icons/dj-mixer.png',
                  "Live\Set",
                  Colors.grey[800],
                  Colors.grey[700],
                  Colors.grey[600]),
              CategorieGridBuilder(
                  'assets/icons/viola.png',
                  "Klassische\nMusik",
                  Colors.red[800],
                  Colors.red[500],
                  Colors.red[200]),
            ],
          ),
        ),
      ],
    );
  }
}
