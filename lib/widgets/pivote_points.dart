import 'package:flutter/material.dart';
import 'package:flutter_intern/model/data.dart';
import 'package:flutter_intern/widgets/basic/background_text.dart';
import 'package:provider/provider.dart';

import 'basic/bottom_sheet.dart';

class PivotePoints extends StatelessWidget {
  void showBottomSheet(BuildContext context, pData) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      enableDrag: true,
      isScrollControlled: true,
      elevation: 20,
      context: context,
      builder: (context) {
        return Options(pData, false); //widget that need to shows on the sheet
      },
    ); //set a callback from sheet when it dismissed
  }

  lastChartRow(context, t1, t2) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            t1,
            style: Theme.of(context)
                .textTheme
                .headline3
                ?.copyWith(color: Colors.white.withOpacity(.60)),
          ),
          Text(
            t2,
            style: Theme.of(context).textTheme.headline3,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var pData = Provider.of<TechnicalIP>(context);
    var data = pData.pivoteData;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            'Pivot Points',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        GestureDetector(
          onTap: () {
            showBottomSheet(context, pData);
          },
          child: BackgroundText(pData.pivotePoints.toUpperCase(), false,
              Colors.white.withOpacity(.87)),
        ),
        lastChartRow(context, 'S3', data['s3']),
        lastChartRow(context, 'S2', data['s2']),
        lastChartRow(context, 'S1', data['s1']),
        lastChartRow(context, 'Pivot Points', data['pivot_points']),
        lastChartRow(context, 'R1', data['r1']),
        lastChartRow(context, 'R2', data['r2']),
        lastChartRow(context, 'R3', data['r3']),
      ],
    );
  }
}
