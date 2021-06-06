import 'package:flutter/material.dart';

class ArrowC extends StatelessWidget {
  final Color color;
  final String text;
  ArrowC(this.color, this.text);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 2,
          left: -14,
          child: Icon(
            Icons.arrow_left,
            color: color,
            // size: 10,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(3),
          child: Container(
            color: color,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
            child: Text(
              text,

              // style: Theme.of(context).textTheme.headline3?.copyWith(
              //       color: Colors.black,
              //     ),
            ),
          ),
        ),
      ],
    );
  }
}
