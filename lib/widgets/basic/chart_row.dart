import 'package:flutter/material.dart';

enum TypeOptions {
  sell,
  buy,
  neutral,
  lessVolataile,
}

class ChartRow extends StatelessWidget {
  final String t1, t2;
  final Color color;
  final TypeOptions type;
  const ChartRow(this.t1, this.t2, this.color, this.type);

  Widget textW(context, text, color) {
    return Text(text,
        textAlign: TextAlign.right,
        style: Theme.of(context).textTheme.headline3?.copyWith(color: color));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              t1,
              style:
                  Theme.of(context).textTheme.headline3?.copyWith(color: color),
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
              child: (type == TypeOptions.sell)
                  ? textW(context, 'SELL', Colors.red)
                  : (type == TypeOptions.buy)
                      ? textW(context, 'BUY', Colors.blue)
                      : (type == TypeOptions.neutral)
                          ? textW(context, 'NEUTRAL', Colors.amber)
                          : textW(context, 'LESS VOLATAILE', Colors.grey)),
        ],
      ),
    );
  }
}
