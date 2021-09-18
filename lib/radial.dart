import 'package:flutter/material.dart';

class RadialTransition extends StatelessWidget {
  final double maxRadius;
  final Widget child;
  RadialTransition({required this.child, required this.maxRadius});
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: maxRadius,
        height: maxRadius,
        child: ClipRect(
          child: child,
        ),
      ),
    );
  }
}
