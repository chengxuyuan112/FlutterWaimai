 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherWidget extends StatefulWidget{
   @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WeatherState();
  }
}
 class WeatherState extends State<WeatherWidget>{
      @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
        children: <Widget>[
          Icon(Icons.cloud_done,size: 18,color: Colors.white),
          Container(
            margin: EdgeInsets.only(left: 5),
            child:  Text("23") ,
          )
        ],
    );
  }
 }