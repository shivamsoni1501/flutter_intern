import 'package:flutter/material.dart';
import 'package:flutter_intern/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Intern',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'IBMPlex',
        textTheme: Theme.of(context).textTheme.copyWith(
              headline1: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              headline2: TextStyle(
                color: Color(0xFFDCDCDC),
                fontSize: 16,
              ),
              headline3: TextStyle(
                color: Color(0xFFDCDCDC),
                fontSize: 14,
              ),
              headline4: TextStyle(
                color: Color(0xFF9F9F9F),
                fontSize: 11,
              ),
            ),
      ),
      home: HomeScreen(),
    );
  }
}
