import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwamaiapp/Location.dart';

import 'TakeAwayTitle.dart';

class TakeAway extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
       home: Scaffold(
         body: Column(
           children: <Widget>[
              new TakeTitleWidget()
           ],
         )
       ),
    );
  }
}