import 'package:flutter/material.dart';
import './GridTileBuild.dart';

class Grid extends StatelessWidget {
  Grid();

  final BorderRadius radius = BorderRadius.all(Radius.circular(35));

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
            crossAxisCount: 2,
            childAspectRatio: 3 / 4,
            children: <Widget>[
              GridTileBuild(
                  'assets/images/bausa.jpg', 'Bausa', 'Konzert', true,2650),
              GridTileBuild(
                  'assets/images/alan_walker.jpg', 'Alan Walker', 'Festival', false,null),
              GridTileBuild(
                  'assets/images/lena_m_l.jpg', 'Lena Meyer-Landrut ', 'Konzert',false,null),
              GridTileBuild(
                  'assets/images/apache207.jpg', 'Apache 207', 'Konzert',true,2232),
              GridTileBuild(
                  'assets/images/felix_lobrecht.jpg', 'Felix Lobrecht', 'StandUp',true,1403),
              GridTileBuild(
                  'assets/images/max_giesinger.jpg', 'Max Giesinger', 'Konzert',true,1801),
              GridTileBuild(
                  'assets/images/steve_aoki.jpg', 'Steve Aoki', 'Festival',false,null),
              GridTileBuild(
                  'assets/images/paul_panzer.jpg', 'Paul Panzer', 'StandUp',true,540),
            ],
          ),
        ),
      ],
    );
  }
}
