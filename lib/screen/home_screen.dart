import 'package:flutter/material.dart';
import 'package:flutter_intern/widgets/arrow_container.dart';
import 'package:flutter_intern/widgets/indicator.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  backgroundContainer(child) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        // boxShadow: [
        //   BoxShadow(
        //     spreadRadius: 10,
        //     offset: Offset(0, 5),
        //   )
        // ],
        color: Color(0xff121212),
        borderRadius: BorderRadius.circular(5),
      ),
      child: child,
    );
  }

  backgroundText(context, text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }

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

  rowW(t1, t2, t3, theme) {
    return Row(
      children: [
        Expanded(
          child: Text(
            t1,
            textAlign: TextAlign.center,
            style: theme,
          ),
        ),
        Expanded(
          child: Text(
            t2,
            style: theme,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Text(
            t3,
            style: theme,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  chartHeadline(t1, t2, t3, theme) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color(0xFF121212), borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            t1,
            style: theme,
          ),
          Text(
            t2,
            style: theme,
          ),
          Text(
            t3,
            style: theme,
          ),
        ],
      ),
    );
  }

  chartRow(context, t1, t2, check, {color}) {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              t1,
              style: Theme.of(context).textTheme.headline3?.copyWith(
                  color: (color != null) ? color : Color(0xffC2C2C2)),
            ),
          ),
          Expanded(
            child: Text(
              t2,
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: (check == 0)
                ? Text(
                    'SELL',
                    textAlign: TextAlign.right,
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        ?.copyWith(color: Colors.red),
                  )
                : (check == 1)
                    ? Text(
                        'BUY',
                        textAlign: TextAlign.right,
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            ?.copyWith(color: Colors.blue),
                      )
                    : (check == 2)
                        ? Text(
                            'NEUTRAL',
                            textAlign: TextAlign.right,
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                ?.copyWith(color: Colors.amber),
                          )
                        : Text(
                            'LESS VOLATAILE',
                            textAlign: TextAlign.right,
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                ?.copyWith(color: Colors.grey),
                          ),
          ),
        ],
      ),
    );
  }

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
            backgroundContainer(Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Technical Indicators',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Icon(Icons.keyboard_arrow_down, color: Colors.grey, size: 20),
              ],
            )),
            backgroundText(context, 'Summary'),
            Row(
              children: [
                SizedBox(width: 30),
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
            backgroundText(context, 'Moving Averages'),
            Align(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Color(0xFF007AFF),
                  child: Text(
                    'BUY',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            rowW('7', '-', '5', Theme.of(context).textTheme.headline2),
            rowW('Buy', 'Neutral', 'Sell',
                Theme.of(context).textTheme.headline4),
            SizedBox(height: 10),
            Align(
              child: backgroundContainer(Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Exponential',
                      style: Theme.of(context)
                          .textTheme
                          .headline3
                          ?.copyWith(color: Color(0xffC2C2C2))),
                  SizedBox(width: 10),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 18,
                  ),
                ],
              )),
            ),
            SizedBox(height: 15),
            chartHeadline('Peroid', 'Value', 'Type',
                Theme.of(context).textTheme.headline4),
            chartRow(context, 'MA10', '465.28', 0),
            chartRow(context, 'MA20', '465.28', 0),
            chartRow(context, 'MA30', '465.28', 1),
            chartRow(context, 'MA40', '465.28', 1),
            chartRow(context, 'MA100', '465.28', 0),
            chartRow(context, 'MA200', '465.28', 1),
            backgroundText(context, 'Oscillators'),
            Align(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Color(0xFFFF2E50),
                  child: Text(
                    'STONG SELL',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            rowW('1', '1', '9', Theme.of(context).textTheme.headline2),
            rowW('Buy', 'Neutral', 'Sell',
                Theme.of(context).textTheme.headline4),
            SizedBox(height: 10),
            chartHeadline('Name', 'Value', 'Action',
                Theme.of(context).textTheme.headline4),
            chartRow(context, 'RSI (14)', '-53.6549', 2, color: Colors.grey),
            chartRow(context, 'CCI (20)', '-53.6549', 0, color: Colors.grey),
            chartRow(context, 'ADI (14)', '-53.6549', 1, color: Colors.grey),
            chartRow(context, 'Awesome Oscillators', '-53.6549', 0,
                color: Colors.grey),
            chartRow(context, 'Momentum (10)', '-53.6549', 0,
                color: Colors.grey),
            chartRow(context, 'Stochastic RSI Fast (3,3,14,14)', '-53.6549', 0,
                color: Colors.grey),
            chartRow(context, 'William %R (14)', '-53.6549', 0,
                color: Colors.grey),
            chartRow(context, 'Bull Bear Power', '-53.6549', 0,
                color: Colors.grey),
            chartRow(context, 'Ultimate Oscillator (7, 14, 28)', '-53.6549', 3,
                color: Colors.grey),
            backgroundText(context, 'Pivote Points'),
            Align(
              child: backgroundContainer(Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Classic',
                      style: Theme.of(context)
                          .textTheme
                          .headline3
                          ?.copyWith(color: Color(0xffC2C2C2))),
                  SizedBox(width: 10),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 18,
                  ),
                ],
              )),
            ),
            lastChartRow(context, 'S3', '456.87'),
            lastChartRow(context, 'S2', '456.87'),
            lastChartRow(context, 'S1', '456.87'),
            lastChartRow(context, 'Pivote Points', '456.87'),
            lastChartRow(context, 'R1', '456.87'),
            lastChartRow(context, 'R2', '456.87'),
            lastChartRow(context, 'R3', '456.87'),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
