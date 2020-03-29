 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScanWidget extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
          Icon(Icons.scanner),
          Text("掃碼",style: TextStyle(color: Colors.white,fontSize: 13),)
      ],
    );
  }
}
