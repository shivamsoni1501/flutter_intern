import 'package:flutter/material.dart';

class ChartHeadline extends StatelessWidget {
  final String t1, t2, t3;
  final TextStyle style;
  const ChartHeadline(this.t1, this.t2, this.t3, this.style);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFF121212),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            t1,
            style: style,
          ),
          Text(
            t2,
            style: style,
          ),
          Text(
            t3,
            style: style,
          ),
        ],
      ),
    );
  }
}
