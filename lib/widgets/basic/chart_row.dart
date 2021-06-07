import 'package:flutter/material.dart';

class ChartRow extends StatelessWidget {
  final String t1, t2;
  final Color color;
  final String type;
  const ChartRow(this.t1, this.t2, this.color, this.type);

  Widget textW(context, text, color) {
    return Text(text,
        textAlign: TextAlign.right,
        style: Theme.of(context).textTheme.headline3?.copyWith(color: color));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 60,
      margin: EdgeInsets.only(top: 20),
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
          Text(
            t2,
            style: Theme.of(context).textTheme.headline3,
            textAlign: TextAlign.center,
          ),
          Expanded(
              child: (type == 'Sell')
                  ? textW(context, type.toUpperCase(), Color(0xFFFF2E50))
                  : (type == 'Buy')
                      ? textW(context, type.toUpperCase(), Color(0xFF007AFF))
                      : (type == 'Neutral')
                          ? textW(
                              context, type.toUpperCase(), Color(0xFFFFB946))
                          : textW(context, type.toUpperCase(), Colors.grey)),
        ],
      ),
    );
  }
}
