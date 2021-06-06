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
          top: -5,
          left: -20,
          child: Icon(
            Icons.arrow_left,
            color: color,
            size: 40,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(3),
          child: Container(
            color: color,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
            child: Text(
              text,
            ),
          ),
        ),
      ],
    );
  }
}
