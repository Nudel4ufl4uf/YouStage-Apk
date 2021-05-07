import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  Grid();

  final BorderRadius radius = BorderRadius.all(Radius.circular(35));

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(25),
          sliver: SliverGrid.count(
            crossAxisSpacing: 25,
            mainAxisSpacing: 25,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: radius,
                    color: Colors.pink[200],
                    image: DecorationImage(
                      image: AssetImage('assets/images/bausa.jpg'),
                      fit: BoxFit.fill,
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: radius,
                    color: Colors.pink[200],
                    image: DecorationImage(
                      image: AssetImage('assets/images/alan_walker.jpg'),
                      fit: BoxFit.fill,
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: radius,
                    color: Colors.pink[200],
                    image: DecorationImage(
                      image: AssetImage('assets/images/lena_m_l.jpg'),
                      fit: BoxFit.fill,
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: radius,
                    color: Colors.pink[200],
                    image: DecorationImage(
                      image: AssetImage('assets/images/apache207.jpg'),
                      fit: BoxFit.fill,
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: radius,
                    color: Colors.pink[200],
                    image: DecorationImage(
                      image: AssetImage('assets/images/felix_lobrecht.jpg'),
                      fit: BoxFit.fill,
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: radius,
                    color: Colors.pink[200],
                    image: DecorationImage(
                      image: AssetImage('assets/images/max_giesinger.jpg'),
                      fit: BoxFit.fill,
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: radius,
                    color: Colors.pink[200],
                    image: DecorationImage(
                      image: AssetImage('assets/images/steve_aoki.jpg'),
                      fit: BoxFit.fill,
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: radius,
                    color: Colors.pink[200],
                    image: DecorationImage(
                      image: AssetImage('assets/images/paul_panzer.jpg'),
                      fit: BoxFit.fill,
                    ),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
