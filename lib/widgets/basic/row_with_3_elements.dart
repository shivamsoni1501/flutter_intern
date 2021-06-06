import 'package:flutter/material.dart';

class RowW3 extends StatelessWidget {
  final String t1, t2, t3;
  final TextStyle theme;
  RowW3(this.t1, this.t2, this.t3, this.theme);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          t1,
          textAlign: TextAlign.center,
          style: theme,
        ),
        Text(
          t2,
          style: theme,
          textAlign: TextAlign.center,
        ),
        Text(
          t3,
          style: theme,
          textAlign: TextAlign.center,
        ),
      ],
    );
    ;
  }
}
