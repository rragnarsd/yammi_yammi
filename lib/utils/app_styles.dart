import 'package:flutter/material.dart';

BoxDecoration raisedBorderDecoration({
  Color backgroundColor = const Color(0xffCAFE89),
  double borderRadius = 12,
  double borderWidth = 2,
  Color borderColor = Colors.black,
  Offset shadowOffset = const Offset(3, 3),
}) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(borderRadius),
    border: Border.all(color: borderColor, width: borderWidth),
    color: backgroundColor,
    boxShadow: [
      BoxShadow(
        color: borderColor,
        offset: shadowOffset,
        blurRadius: 0,
        spreadRadius: 0,
      ),
    ],
  );
}
