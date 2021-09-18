import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hero_animation_app/radial.dart';

class Util {
  static const String WORKOUT_1 = 'assets/fitness1.jpg';
  static const String WORKOUT_2 = 'assets/fitness2.jpg';
  static const String WORKOUT_3 = 'assets/fitness3.jpg';



  static Widget buildHeroIcon(
    String path,
    String tag,
  ) {
    return Hero(
      tag: tag,
      child: Container(
        width: 80,
        height: 80,
        child: Image.asset(
          path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  static Widget buildHeroDestination(String path, String tag, double width) {
    return Hero(
      tag: tag,
      child: Container(
        width: width,
        child: Image.asset(
          path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  static Widget buildHeroRadialIcon(
      String path, String tag, double minRadius, double maxRadius) {
    return Container(
      child: Hero(
        tag: tag,
        createRectTween: createTween,
        child: Container(
          height: minRadius,
          width: minRadius,
          child: RadialTransition(
            maxRadius: maxRadius,
            child: Image.asset(
              path,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  static Widget buildHeroRadialDestination(String path, String tag,
      double maxWidth, double maxHeight, VoidCallback pop) {
    return GestureDetector(
      child: Hero(tag: tag,
        child: Container(
          height: maxHeight,
          width: maxWidth,
          child: RadialTransition(
            maxRadius: maxWidth/2,
            child: Image.asset(path,
            fit: BoxFit.cover,
            ),
          ),
        ),
       createRectTween: _createTween,
      ),
      onTap: pop,
    );
  }

  RectTween createTween(Rect begin, Rect end) {
    return MaterialRectArcTween(begin: begin, end: end);
  }
}
