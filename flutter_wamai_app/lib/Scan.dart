 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScanWidget extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
          Icon(Icons.scanner,color: Colors.white,size: 18,),
          Container(
            margin: EdgeInsets.only(left: 5),
            child:  Text("扫码",style: TextStyle(color: Colors.white,fontSize: 13)) ,
          )
      ],
    );
  }
}
