import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_intern/model/data.dart';
import 'package:flutter_intern/widgets/basic/background_text.dart';
import 'package:flutter_intern/widgets/moving_averages.dart';
import 'package:flutter_intern/widgets/oscillators.dart';
import 'package:flutter_intern/widgets/pivote_points.dart';
import 'package:flutter_intern/widgets/summary.dart';

import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.keyboard_arrow_left,
          color: Colors.white.withOpacity(.87),
        ),
        title: Text(
          'USD / INR',
          style: Theme.of(context).textTheme.headline1,
        ),
        backgroundColor: Colors.black,
        // bottomOpacity: .2,
        bottom: AppBar(
          backgroundColor: Colors.black,
          title: BackgroundText(
              'Technical Indicators', true, Colors.white.withOpacity(.60)),
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: FutureBuilder(
          future: Provider.of<TechnicalIP>(context, listen: false).fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.none) {
              return Text('Server Error!');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.data == true)
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Summary(),
                      MovingAve(),
                      Oscillators(),
                      PivotePoints(),
                      SizedBox(height: 100)
                    ],
                  ),
                );
              else
                return Text(
                  'Error in fetching data',
                  style: Theme.of(context).textTheme.headline2,
                );
            } else {
              return Text('Unknown Error');
            }
          },
        ),
      ),
    );
  }
}
