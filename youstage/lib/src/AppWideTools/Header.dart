import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  String header;

  Header(this.header);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:10),
      child: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      header,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/Profile');
                    },
                    child: Container(
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            AssetImage('assets/images/max_mustermann.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
