import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter_intern/model/data.dart';
import 'package:flutter_intern/widgets/basic/background_text.dart';
import 'package:provider/provider.dart';

import 'basic/bottom_sheet.dart';
import 'basic/button.dart';
import 'basic/chart_healine.dart';
import 'basic/chart_row.dart';
import 'basic/row_with_3_elements.dart';

class MovingAve extends StatelessWidget {
  void showBottomSheet(BuildContext context, pData) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      enableDrag: true,
      isScrollControlled: true,
      elevation: 20,
      context: context,
      builder: (context) {
        return Options(pData, true); //widget that need to shows on the sheet
      },
    ); //set a callback from sheet when it dismissed
  }

  @override
  Widget build(BuildContext context) {
    var pData = Provider.of<TechnicalIP>(context);
    var data = pData.movingData;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            'Moving Averages',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        CustomButton(data['text']),
        SizedBox(height: 10),
        RowW3(data['buy'], '-', data['sell'],
            Theme.of(context).textTheme.headline2!),
        RowW3('Buy', 'Neutral', 'Sell', Theme.of(context).textTheme.headline4!),
        SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            showBottomSheet(context, pData);
          },
          child: BackgroundText(pData.movingAve.toUpperCase(), false,
              Colors.white.withOpacity(.87)),
        ),
        SizedBox(height: 10),
        ChartHeadline(
            'TITLE', 'VALUE', 'TYPE', Theme.of(context).textTheme.headline4!),
        ...data['table_data'].map((e) {
          return ChartRow(e['title'], e['value'],
              Color(0xFFFFFFFF).withOpacity(.87), e['type']);
        }).toList(),
        SizedBox(height: 10),
      ],
    );
  }
}
