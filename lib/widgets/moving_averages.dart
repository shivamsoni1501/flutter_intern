import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter_intern/widgets/basic/background_text.dart';

import 'basic/button.dart';
import 'basic/chart_healine.dart';
import 'basic/chart_row.dart';
import 'basic/row_with_3_elements.dart';

class MovingAve extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            'Moving Averages',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        CustomButton('BUY', Color(0xFF007AFF)),
        SizedBox(height: 10),
        RowW3('7', '-', '5', Theme.of(context).textTheme.headline2!),
        RowW3('Buy', 'Neutral', 'Sell', Theme.of(context).textTheme.headline4!),
        SizedBox(height: 10),
        BackgroundText('Exponential', false, Colors.white),
        SizedBox(height: 10),
        ChartHeadline(
            'Period', 'Value', 'Type', Theme.of(context).textTheme.headline4!),
        ChartRow('MA10', '465.28', Color(0xFFDCDCDC), TypeOptions.sell),
        ChartRow('MA20', '465.28', Color(0xFFDCDCDC), TypeOptions.sell),
        ChartRow('MA30', '465.28', Color(0xFFDCDCDC), TypeOptions.buy),
        ChartRow('MA40', '465.28', Color(0xFFDCDCDC), TypeOptions.buy),
        ChartRow('MA100', '465.28', Color(0xFFDCDCDC), TypeOptions.sell),
        ChartRow('MA200', '465.28', Color(0xFFDCDCDC), TypeOptions.buy),
        SizedBox(height: 10),
      ],
    );
  }
}
