import 'package:flutter/material.dart';

class CommonWidgets {
  static Widget appText(
    String text, {
    bool isCenter = false,
    double? size,
    Color? textColor,
    FontWeight fontWeight = FontWeight.normal,
    TextOverflow? overflow,
    TextDecoration? decoration,
    int? maxLines,
    TextDirection? textDirection,
    TextAlign? textAlign,
    double? height,
  }) {
    return Text(
      text,
      overflow: overflow,
      maxLines: maxLines,
      textDirection: textDirection,
      style: TextStyle(
          height: height ?? 1.6,
          fontSize: size,
          color: textColor,
          fontWeight: fontWeight,
          decoration: decoration,
          fontFamily: 'Cairo'),
      textAlign: isCenter ? TextAlign.center : textAlign ?? TextAlign.start,
      softWrap: false,
    );
  }
}

Widget appHSpace(double height) {
  return SizedBox(
    height: height,
  );
}

Widget appVSpace(double width) {
  return SizedBox(
    width: width,
  );
}
