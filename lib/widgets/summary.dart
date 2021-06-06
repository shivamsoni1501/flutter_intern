import 'package:flutter/material.dart';

import 'basic/arrow_container.dart';
import 'basic/indicator.dart';

class Summary extends StatelessWidget {
  textBox(context, text, color) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 70,
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
          padding: const EdgeInsets.all(25.0),
          child: Text(
            'Summary',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        Row(
          children: [
            SizedBox(width: 25),
            Indicator(300),
            SizedBox(width: 10),
            ArrowC(Colors.amber, 'NEUTRAL'),
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                textBox(context, '1 MIN', Colors.white),
                textBox(context, '5 MIN', Colors.grey.shade600),
                textBox(context, '15 MIN', Colors.grey.shade600),
                textBox(context, '30 MIN', Colors.grey.shade600),
                textBox(context, '1 HR', Colors.grey.shade600),
                textBox(context, '5 HR', Colors.grey.shade600),
                textBox(context, '1 DAY', Colors.grey.shade600),
                textBox(context, '1 WK', Colors.grey.shade600),
                textBox(context, '1 MON', Colors.grey.shade600),
              ],
            )
          ],
        ),
      ],
    );
  }
}
