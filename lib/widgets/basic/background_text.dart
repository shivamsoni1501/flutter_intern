import 'package:flutter/material.dart';

class BackgroundText extends StatelessWidget {
  final String text;
  final bool isLong;
  BackgroundText(this.text, this.isLong);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
      decoration: BoxDecoration(
        color: Color(0xff121212),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(width: 10),
          if (isLong) Spacer(),
          Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xffC2C2C2),
          ),
        ],
      ),
    );
    ;
  }
}
