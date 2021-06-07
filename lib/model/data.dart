import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_intern/widgets/moving_averages.dart';
import 'package:flutter_intern/widgets/oscillators.dart';
import 'package:http/http.dart' as http;

class TechnicalIP extends ChangeNotifier {
  Map<String, dynamic> _data = {};
  Map<String, dynamic> get data {
    return _data;
  }

  // Periods
  String _period = '';
  set period(String val) {
    _period = val;
    notifyListeners();
  }

  String get period {
    return _period;
  }

  get periodList {
    return _data.keys.toList();
  }

  get periodData {
    return _data[period];
  }

  //Moving Averages
  String _movingAve = '';
  set movingAve(String val) {
    _movingAve = val;
    notifyListeners();
  }

  String get movingAve {
    return _movingAve;
  }

  List<String> get movingList {
    return periodData['moving_averages']['table_data'].keys.toList();
  }

  Map<String, dynamic> get movingData {
    var temp = periodData['moving_averages'];
    return {
      'buy': temp['buy'],
      'sell': temp['sell'],
      'table_data': temp['table_data'][movingAve],
      'text': temp['text']
    };
  }

  // Pivot Points
  String _pivotePoints = '';
  set pivotePoints(String val) {
    _pivotePoints = val;
    notifyListeners();
  }

  String get pivotePoints {
    return _pivotePoints;
  }

  List<String> get pivotList {
    return periodData['pivot_points'].keys.toList();
  }

  get pivoteData {
    return periodData['pivot_points'][pivotePoints];
  }

  // Oscillators
  get oscillatorsData {
    return periodData['technical_indicator'];
  }

  //SummaryData
  get summaryData {
    return periodData['summary']['summary_text'];
  }

  fetchData() async {
    var url = Uri.parse(
        'https://api.bottomstreet.com/api/data?page=forex_detail&filter_name=identifier&filter_value=INRUSD');
    dynamic responce = await http.get(url);
    try {
      if (responce != null) {
        var responceData = json.decode(responce.body) as Map<String, dynamic>;
        print(responceData);
        _data = responceData['technical_indicator'];
        this.period = periodList[0];
        this.movingAve =
            periodData['moving_averages']['table_data'].keys.toList()[0];
        this.pivotePoints = periodData['pivot_points'].keys.toList()[0];
        return true;
      }
      return true;
    } catch (e) {
      return false;
    }
  }
}
