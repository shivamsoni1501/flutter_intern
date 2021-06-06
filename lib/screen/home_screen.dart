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
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                ),
                SizedBox(width: 20),
                Text(
                  'USD / INR',
                  style: Theme.of(context).textTheme.headline1,
                )
              ],
            ),
            BackgroundText('Technical Indicators', true, Color(0xFF9F9F9F)),
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
