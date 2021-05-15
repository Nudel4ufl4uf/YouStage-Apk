import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CategorieGridBuilder extends StatelessWidget {
  final String myicon;
  final String mytext;
  final Color color1;
  final Color color2;
  final Color color3;

  CategorieGridBuilder(
      this.myicon, this.mytext, this.color1, this.color2, this.color3);

  final BorderRadius radius = BorderRadius.all(Radius.circular(35));

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        gradient: LinearGradient(begin: Alignment.centerLeft, colors: [
          color1,
          color2,
          color3,
        ]),
      ),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: new EdgeInsets.only(left: 20, right: 20),
              child: Image(
                image: AssetImage(myicon),
                height: 55,
                width: 55,
                alignment: Alignment.centerLeft,
              ),
            ),
            AutoSizeText(
              mytext,
              maxLines: 2,
              style: TextStyle(
                fontSize: 37,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
