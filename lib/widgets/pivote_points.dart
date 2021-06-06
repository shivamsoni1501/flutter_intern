import 'package:flutter/material.dart';
import 'package:flutter_intern/widgets/basic/background_text.dart';

class PivotePoints extends StatelessWidget {
  lastChartRow(context, t1, t2) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            t1,
            style: Theme.of(context)
                .textTheme
                .headline3
                ?.copyWith(color: Colors.grey),
          ),
          Text(
            t2,
            style: Theme.of(context).textTheme.headline3,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            'Pivot Points',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        BackgroundText('Classic', false, Colors.white),
        lastChartRow(context, 'S3', '456.87'),
        lastChartRow(context, 'S2', '456.87'),
        lastChartRow(context, 'S1', '456.87'),
        lastChartRow(context, 'Pivot Points', '456.87'),
        lastChartRow(context, 'R1', '456.87'),
        lastChartRow(context, 'R2', '456.87'),
        lastChartRow(context, 'R3', '456.87'),
      ],
    );
  }
}
