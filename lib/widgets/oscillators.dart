import 'package:flutter/material.dart';
import 'package:flutter_intern/widgets/basic/button.dart';

import 'basic/chart_healine.dart';
import 'basic/chart_row.dart';
import 'basic/row_with_3_elements.dart';

class Oscillators extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            'Oscillators',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        CustomButton('STONG SELL', Color(0xFFFF2E50)),
        SizedBox(height: 20),
        RowW3('1', '1', '9', Theme.of(context).textTheme.headline2!),
        RowW3('Buy', 'Neutral', 'Sell', Theme.of(context).textTheme.headline4!),
        SizedBox(height: 10),
        ChartHeadline(
            'Name', 'Value', 'Action', Theme.of(context).textTheme.headline4!),
        ChartRow('RSI (14)', '-53.6549', Colors.grey, TypeOptions.neutral),
        ChartRow('CCI (20)', '-53.6549', Colors.grey, TypeOptions.sell),
        ChartRow('ADI (14)', '-53.6549', Colors.grey, TypeOptions.buy),
        ChartRow(
            'Awesome Oscillators', '-53.6549', Colors.grey, TypeOptions.sell),
        ChartRow('Momentum (10)', '-53.6549', Colors.grey, TypeOptions.sell),
        ChartRow('Stochastic RSI Fast (3,3,14,14)', '-53.6549', Colors.grey,
            TypeOptions.sell),
        ChartRow('William %R (14)', '-53.6549', Colors.grey, TypeOptions.sell),
        ChartRow('Bull Bear Power', '-53.6549', Colors.grey, TypeOptions.sell),
        ChartRow('Ultimate Oscillator (7, 14, 28)', '-53.6549', Colors.grey,
            TypeOptions.lessVolataile),
      ],
    );
  }
}
