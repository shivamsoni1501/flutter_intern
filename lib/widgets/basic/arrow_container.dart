import 'package:flutter/material.dart';
import 'package:flutter_intern/model/constants.dart';
import 'package:flutter_intern/model/data.dart';
import 'package:provider/provider.dart';

class ArrowC extends StatelessWidget {
  // ArrowC(this.color);

  @override
  Widget build(BuildContext context) {
    var pData = Provider.of<TechnicalIP>(context);
    String cP = pData.period;
    String cLable = pData.summaryData;
    Color? color = stringKeys[cLable];

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
              cLable,
            ),
          ),
        ),
      ],
    );
  }
}
