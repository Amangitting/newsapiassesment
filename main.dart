import 'package:flutter/material.dart';
import 'package:newsapi_assesment/screens/screen1.dart';
import 'package:newsapi_assesment/screens/screen2.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'screen 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFF464646),
          fontFamily: 'RobotoSlabFontFamily'),
      home: Screen1(),
    );
  }
}
