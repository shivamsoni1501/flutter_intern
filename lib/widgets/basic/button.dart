import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  CustomButton(this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          // alignment: Alignment(0, .3),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          color: color,
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
