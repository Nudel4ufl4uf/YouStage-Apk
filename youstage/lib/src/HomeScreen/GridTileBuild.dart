import 'package:flutter/material.dart';

class GridTileBuild extends StatelessWidget {
  final String name;
  final String image;
  final String categorie;
  final bool live;

  GridTileBuild(this.image, @required this.name, @required this.categorie,
      @required this.live);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: Stack(children: <Widget>[
              Image(
                image: AssetImage(image),
                alignment: Alignment(0, -1),
              ),
              if (live)
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.offline_bolt,
                    size: 42,
                    color: Colors.pink[600],
                  ),
                ),
            ]),
          ),
        ),
        Text(name,
            style: TextStyle(
              color: Colors.pink[600],
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        Text(categorie),
      ],
    );
  }
}
