import 'package:flutter/material.dart';

final Color white = Colors.white;
final Color black = Colors.black;
final Color red = Colors.red;

const String logo =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy9h7bGkuWsybv6pCSioTnStxo0H0GIzxyu_5XubmC7CXITdfhYhtOf6pd3EklBPy78NM&usqp=CAU';

TextStyle customizeTextStyle(fontWeight, fontSize, fontColor) => TextStyle(
    fontWeight: fontWeight,
    wordSpacing: 3,
    color: fontColor,
    fontSize: fontSize);

Widget customText(String text, Color color, double size,
    {fontWeight, FontStyle? fontStyle, TextDecoration? decoration}) {
  return Text(text,
      style: TextStyle(
          decoration: decoration,
          fontSize: size,
          color: color,
          fontWeight: fontWeight,
          fontStyle: fontStyle));
}
