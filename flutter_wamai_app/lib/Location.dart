import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LocationState();
  }

}
class LocationState extends State<LocationWidget>{
  var LocationgName="陝西省西安市";
  void _TapLocation(){

  }
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
          children: <Widget>[
               GestureDetector(
                  child: Icon(Icons.location_on,size: 22,color: Colors.white,),
                 onTap: _TapLocation,
               ),
               Text(LocationgName,style: TextStyle(color: Colors.white,fontSize: 16)),
              Icon(Icons.arrow_drop_down)
          ],
    );
  }
}