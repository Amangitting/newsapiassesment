import 'package:flutter/widgets.dart';

Widget customtext(String text, Fontfamily, double size, Color color) {
  return Text(text,
      style: TextStyle(
        fontFamily: Fontfamily,
        fontSize: size,
        color: color,
      ));
}
