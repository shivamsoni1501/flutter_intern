import 'package:flutter/material.dart';

class BackgroundText extends StatelessWidget {
  final String text;
  final Color color;
  final bool isLong;
  BackgroundText(this.text, this.isLong, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (isLong) ? double.infinity : 130,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xff121212),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style:
                Theme.of(context).textTheme.headline3?.copyWith(color: color),
          ),
          SizedBox(width: 10),
          // if (isLong) Spacer(),
          Icon(Icons.keyboard_arrow_down, color: color, size: 15),
        ],
      ),
    );
  }
}
