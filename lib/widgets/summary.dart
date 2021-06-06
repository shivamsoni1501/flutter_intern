import 'package:flutter/material.dart';

import 'basic/arrow_container.dart';
import 'basic/indicator.dart';

class Summary extends StatelessWidget {
  textBox(context, text, color) {
    return Container(
      alignment: Alignment(0, .3),
      width: 50,
      height: 30,
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: color)),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline4?.copyWith(color: color),
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
            'Summary',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 30),
            Indicator(300),
            SizedBox(width: 15),
            ArrowC(Color(0xFFFCBB46), 'NEUTRAL'),
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                textBox(context, '1 MIN', Color(0xFFDCDCDC)),
                textBox(context, '5 MIN', Color(0xFF424242)),
                textBox(context, '15 MIN', Color(0xFF424242)),
                textBox(context, '30 MIN', Color(0xFF424242)),
                textBox(context, '1 HR', Color(0xFF424242)),
                textBox(context, '5 HR', Color(0xFF424242)),
                textBox(context, '1 DAY', Color(0xFF424242)),
                textBox(context, '1 WK', Color(0xFF424242)),
                textBox(context, '1 MON', Color(0xFF424242)),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ],
    );
  }
}
