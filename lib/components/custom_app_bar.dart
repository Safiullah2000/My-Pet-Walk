import 'package:flutter/material.dart';

class CustomAppBarShape extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final path = Path();
    path.moveTo(rect.left, rect.top);
    path.lineTo(rect.right, rect.top);
    path.lineTo(rect.right, rect.bottom - 20.0);
    path.quadraticBezierTo(
        rect.right, rect.bottom, rect.right - 20.0, rect.bottom);
    path.lineTo(rect.left + 10.0, rect.bottom);
    path.quadraticBezierTo(rect.left, rect.bottom, rect.left, rect.bottom - 10.0);
    path.lineTo(rect.left, rect.top);
    return path;
  }
}
