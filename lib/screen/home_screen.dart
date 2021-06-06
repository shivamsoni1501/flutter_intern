import 'package:flutter/material.dart';
import 'package:flutter_intern/widgets/basic/background_text.dart';
import 'package:flutter_intern/widgets/moving_averages.dart';
import 'package:flutter_intern/widgets/oscillators.dart';
import 'package:flutter_intern/widgets/pivote_points.dart';
import 'package:flutter_intern/widgets/summary.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.keyboard_arrow_left,
          size: 25,
        ),
        title: Text(
          'USD / INR',
          style: Theme.of(context).textTheme.headline1,
        ),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BackgroundText('Technical Indicators', true),
            Summary(),
            MovingAve(),
            Oscillators(),
            PivotePoints(),
            SizedBox(height: 100)
          ],
        ),
      ),
    );
  }
}
