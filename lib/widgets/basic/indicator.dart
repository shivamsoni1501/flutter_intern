import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final double height;
  Indicator(this.height);

  cBox(color) {
    return Expanded(
      child: Container(
        color: color,
        width: 8,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Container(
                color: Colors.blue,
                width: 8,
              ),
            ),
          ),
          cBox(Colors.blue.shade900),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: Container(
                width: 12,
                color: Colors.amber,
              ),
            ),
          ),
          cBox(Colors.red.shade900),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
              child: Container(
                color: Colors.red.shade600,
                width: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
