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
                color: Color(0xFF0078FD),
                width: 8,
              ),
            ),
          ),
          cBox(Color(0xFF004996)),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: Container(
                width: 12,
                color: Color(0xFFFCBB46),
              ),
            ),
          ),
          cBox(Color(0xFF971C30)),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
              child: Container(
                color: Color(0xFFFF2E53),
                width: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
