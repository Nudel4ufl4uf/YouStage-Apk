import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class GridTileBuild extends StatelessWidget {
  final String name;
  final String image;
  final String categorie;
  final bool live;
  final int viewers;

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
        AutoSizeText(
          name,
          maxLines: 2,
          style: TextStyle(
            color: Colors.pink[600],
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          categorie,
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 13,
          ),
        ),
        if (live && (viewers != null && viewers != ""))
          Container(
            child: Text(
              "$viewers Zuschauer",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 13,
              ),
            ),
          ),
      ],
    );
  }
}
