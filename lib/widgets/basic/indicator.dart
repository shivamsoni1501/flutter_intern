import 'package:flutter/material.dart';
import 'package:flutter_intern/model/data.dart';
import 'package:provider/provider.dart';

class Indicator extends StatelessWidget {
  final double height;
  Indicator(this.height);
  Map temp = {
    'Strong Buy': false,
    'Buy': false,
    'Neutral': false,
    'Sell': false,
    'Strong Sell': false
  };

  @override
  Widget build(BuildContext context) {
    var pData = Provider.of<TechnicalIP>(context);
    temp.forEach((key, value) {
      if (key == pData.summaryData) {
        temp[key] = true;
      }
    });
    return Container(
      height: height,
      width: 15,
      alignment: Alignment.center,
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(temp['Strong Buy'] ? 3 : 0),
                  color: Color(0xFF0078FD),
                ),
                width: temp['Strong Buy'] ? 14 : 8,
              ),
            ),
          ),
          Expanded(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(temp['Buy'] ? 3 : 0),
                color: Color(0xFF004996),
              ),
              width: temp['Buy'] ? 14 : 8,
            ),
          ),
          Expanded(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(temp['Neutral'] ? 3 : 0),
                color: Color(0xFFFCBB46),
              ),
              width: temp['Neutral'] ? 14 : 8,
            ),
          ),
          Expanded(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(temp['Sell'] ? 3 : 0),
                color: Color(0xFF971C30),
              ),
              width: temp['Sell'] ? 14 : 8,
            ),
          ),
          Expanded(
            child: ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(temp['Strong Sell'] ? 3 : 0),
                  color: Color(0xFFFF2E53),
                ),
                width: temp['Strong Sell'] ? 14 : 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
