import 'package:flutter/material.dart';
import 'package:flutter_intern/screen/home_screen.dart';
import 'package:provider/provider.dart';

import 'model/data.dart';

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
                fontWeight: FontWeight.w500,
                fontSize: 21,
              ),
              headline2: TextStyle(
                color: Color(0xFFFFFFFF).withOpacity(.87),
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              headline3: TextStyle(
                color: Color(0xFFFFFFFF).withOpacity(.87),
                fontSize: 14,
              ),
              headline4: TextStyle(
                color: Color(0xFFFFFFFF).withOpacity(.60),
                fontSize: 12,
              ),
            ),
      ),
      home: ChangeNotifierProvider(
        create: (context) => TechnicalIP(),
        child: HomeScreen(),
      ),
    );
  }
}
