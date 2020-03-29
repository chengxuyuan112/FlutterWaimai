 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwamaiapp/Location.dart';
import 'package:flutterwamaiapp/Scan.dart';
import 'package:flutterwamaiapp/Weather.dart';

class TakeTitleWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new TakeTitleState();
  }
}
class TakeTitleState extends State<TakeTitleWidget>{
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
    //  constraints: BoxConstraints.expand(),
      width: double.infinity,
      height: 60,
      color: Colors.lightBlue,
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              child: new LocationWidget(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
               textDirection: TextDirection.rtl,
               children: <Widget>[
                  new ScanWidget(),
                 new WeatherWidget()
               ],
            ),
          ),
//
//           new ScanWidget(),

        ],
      ),
    );
  }
}