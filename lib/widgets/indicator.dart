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
    return ClipRRect(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: height,
        // width: 12,
        child: Column(
          children: [
            cBox(Colors.blueAccent),
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
            cBox(Colors.redAccent),
          ],
        ),
      ),
    );
  }
}
