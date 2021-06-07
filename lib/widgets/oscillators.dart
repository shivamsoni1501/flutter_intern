import 'package:flutter/material.dart';
import 'package:flutter_intern/model/data.dart';
import 'package:flutter_intern/widgets/basic/button.dart';
import 'package:provider/provider.dart';

import 'basic/chart_healine.dart';
import 'basic/chart_row.dart';
import 'basic/row_with_3_elements.dart';

class Oscillators extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pData = Provider.of<TechnicalIP>(context);
    var data = pData.oscillatorsData;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            'Oscillators',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        CustomButton(data['text']),
        SizedBox(height: 20),
        RowW3(data['buy'], data['neutral'], data['sell'],
            Theme.of(context).textTheme.headline2!),
        RowW3('Buy', 'Neutral', 'Sell', Theme.of(context).textTheme.headline4!),
        SizedBox(height: 20),
        ChartHeadline(
            'Name', 'Value', 'Action', Theme.of(context).textTheme.headline4!),

        ...data['table_data'].map((e) {
          return ChartRow(e['name'], e['value'],
              Color(0xFFFFFFFF).withOpacity(.87), e['action']);
        }).toList(),
        // ChartRow('RSI (14)', '-53.6549', Colors.white.withOpacity(.60),
        //     TypeOptions.neutral),
        // ChartRow('CCI (20)', '-53.6549', Colors.white.withOpacity(.60),
        //     TypeOptions.sell),
        // ChartRow('ADI (14)', '-53.6549', Colors.white.withOpacity(.60),
        //     TypeOptions.buy),
        // ChartRow('Awesome Oscillators', '-53.6549',
        //     Colors.white.withOpacity(.60), TypeOptions.sell),
        // ChartRow('Momentum (10)', '-53.6549', Colors.white.withOpacity(.60),
        //     TypeOptions.sell),
        // ChartRow('Stochastic RSI Fast (3,3,14,14)', '-53.6549',
        //     Colors.white.withOpacity(.60), TypeOptions.sell),
        // ChartRow('William %R (14)', '-53.6549', Colors.white.withOpacity(.60),
        //     TypeOptions.sell),
        // ChartRow('Bull Bear Power', '-53.6549', Colors.white.withOpacity(.60),
        //     TypeOptions.sell),
        // ChartRow('Ultimate Oscillator (7, 14, 28)', '-53.6549',
        //     Colors.white.withOpacity(.60), TypeOptions.lessVolataile),
        SizedBox(height: 10),
      ],
    );
  }
}
