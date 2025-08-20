import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

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

EdgeInsets getResponsivePadding(BuildContext context) {
  if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET)) {
    return const EdgeInsets.all(4.0);
  } else {
    return const EdgeInsets.all(32.0);
  }
}
