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
        textTheme: Theme.of(context).textTheme.copyWith(
              headline1: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              headline2: TextStyle(
                color: Color(0xffC2C2C2),
                fontWeight: FontWeight.bold,
                // fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              headline3: TextStyle(
                color: Color(0xffC2C2C2),
                // fontWeight: FontWeight.b,
                fontSize: 15,
              ),
              headline4: TextStyle(
                color: Colors.grey,
                // fontWeight: FontWeight.b,
                fontSize: 12,
              ),
            ),
      ),
      home: HomeScreen(),
    );
  }
}
