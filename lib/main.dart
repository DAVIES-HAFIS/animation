import 'package:flutter/material.dart';
import 'package:hero_animation_app/util.dart';

import 'details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hero Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HeroPage(),
    );
  }
}

class HeroPage extends StatelessWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double maxRadius = MediaQuery.of(context).size.width;
    final double minRadius = 80.0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation Demo'),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        alignment: Alignment.topLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //FOR HERO ANIMATION
            // GestureDetector(
            //   child: Util.buildHeroIcon(Util.WORKOUT_2, 'WORKOUT2'),
            //   onTap: (){
            //     changeRoute(context, 'WORKOUT_2');
            //   },
            // GestureDetector(
            //   child: Util.buildHeroIcon(Util.WORKOUT_3, 'WORKOUT3'),
            //   onTap: (){
            //     changeRoute(context, 'WORKOUT_3');
            //   },
            // ),
            GestureDetector(
              child: Util.buildHeroRadialIcon(
                  Util.WORKOUT_1, 'WORKOUT1', minRadius, maxRadius),
              onTap: () {
                changeRoute(context, 'WORKOUT_1');
              },
            ),
            GestureDetector(
              child: Util.buildHeroRadialIcon(
                  Util.WORKOUT_2, 'WORKOUT2', minRadius, maxRadius),
              onTap: () {
                changeRoute(context, 'WORKOUT_2');
              },
            ),
            GestureDetector(
              child: Util.buildHeroRadialIcon(
                  Util.WORKOUT_3, 'WORKOUT3', minRadius, maxRadius),
              onTap: () {
                changeRoute(context, 'WORKOUT_3');
              },
            ),
          ],
        ),
      ),
    );
  }

  void changeRoute(BuildContext context, String session) {
    switch (session) {
      case 'WORKOUT_1':
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    Details(drinkPath: Util.WORKOUT_1, drinkTag: session)));
        break;
      case 'WORKOUT_2':
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    Details(drinkPath: Util.WORKOUT_2, drinkTag: session)));
        break;
      case 'WORKOUT_3':
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    Details(drinkPath: Util.WORKOUT_3, drinkTag: session)));
        break;
    }
  }
}
