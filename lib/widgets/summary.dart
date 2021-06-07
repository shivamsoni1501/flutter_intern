import 'package:flutter/material.dart';
import 'package:flutter_intern/model/data.dart';
import 'package:provider/provider.dart';

import 'basic/arrow_container.dart';
import 'basic/indicator.dart';

class Summary extends StatelessWidget {
  Widget textBox(context, text, color) {
    return Container(
      alignment: Alignment(0, .3),
      width: 55,
      height: 31,
      margin: EdgeInsets.only(top: 7),
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

  static const Map temp = {
    'Strong Buy': -.9,
    'Buy': -.45,
    'Neutral': 0,
    'Sell': .45,
    'Strong Sell': .9
  };

  static const Map<String, String> tempString = {
    '1 MIN': '1min',
    '5 MIN': '5min',
    '15 MIN': '15min',
    '30 MIN': '30min',
    '1 HR': '1hour',
    '5 HR': '5hour',
    '1 DAY': 'daily',
    '1 WK': 'weekly',
    '1 MON': 'monthly'
  };

  static const List<String> listString = [
    '1 MIN',
    '5 MIN',
    '15 MIN',
    '30 MIN',
    '1 HR',
    '5 HR',
    '1 DAY',
    '1 WK',
    '1 MON'
  ];

  @override
  Widget build(BuildContext context) {
    var pData = Provider.of<TechnicalIP>(context);
    List<String> keys = pData.periodList;
    print(keys);
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
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height: 300,
              alignment: Alignment(0, temp[pData.summaryData]),
              child: ArrowC(),
            ),
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: listString
                  .map((e) => GestureDetector(
                        onTap: () => pData.period = tempString[e]!,
                        child: textBox(
                            context,
                            e,
                            (tempString[e]! == pData.period)
                                ? Colors.white.withOpacity(.87)
                                : Colors.white.withOpacity(.60)),
                      ))
                  .toList(),
            ),
            SizedBox(height: 10),
          ],
        ),
      ],
    );
  }
}
