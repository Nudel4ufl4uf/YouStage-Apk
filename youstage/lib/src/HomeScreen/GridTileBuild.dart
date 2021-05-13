import 'package:flutter/material.dart';

class GridTileBuild extends StatelessWidget {
  final String name;
  final String image;
  final String categorie;
  final bool live;
  final String viewers;

  GridTileBuild(this.image, @required this.name, @required this.categorie,
      @required this.live, this.viewers);

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
              Container(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                  alignment: Alignment.center,
                ),
              ),
              if (live)
                Container(
                  alignment: Alignment.topRight,
                  margin: new EdgeInsets.only(right: 10, top: 10),
                  child: Icon(
                    Icons.album_outlined,
                    size: 20,
                    color: Colors.pink[600],
                  ),
                ),
            ]),
          ),
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.pink[600],
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(categorie),
        if (live && (viewers != null && viewers != ""))
          Container(child: Text(viewers + " Zuschauer")),
      ],
    );
  }
}
