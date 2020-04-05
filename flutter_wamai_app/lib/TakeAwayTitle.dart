import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutterwamaiapp/Location.dart';
import 'package:flutterwamaiapp/Scan.dart';
import 'package:flutterwamaiapp/Weather.dart';

class TakeTitleWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new TakeTitleState();
  }
}

class TakeTitleState extends State<TakeTitleWidget> {
  var lists=["https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/35a2239e10e392af73b6b7a737a039d6.jpg?w=632&h=340",
  "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/50beb6e77e316ff0637d79ad1869572e.jpg?w=632&h=340",
  "https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/816a66edef10673b4768128b41804cae.jpg?w=632&h=340","https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1557781801455&di=17f9f2fc3ded4efb7214d2d8314e8426&imgtype=0&src=http%3A%2F%2Fimg2.mukewang.com%2F5b4c075b000198c216000586.jpg"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //  constraints: BoxConstraints.expand(),
      width: double.infinity,
      height: 260,
      color: Colors.green,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child:new LocationWidget() ,
              ),
              new ScanWidget(),
              Container(
                margin: EdgeInsets.only(left: 10),
                child:new WeatherWidget(),
              )
            ],
          ),
          Container(
            constraints: BoxConstraints(maxHeight: 35,maxWidth: double.infinity),
          //  margin: EdgeInsets.only(left: 10,right: 10),
             margin: EdgeInsets.only(top:20),
            child: TextField(
              autofocus: false,
               decoration: new InputDecoration(
                 contentPadding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
                 fillColor: Colors.white,
                 filled: true,

                 border: OutlineInputBorder(
                   borderSide:  BorderSide.none,
                   borderRadius: BorderRadius.circular(15.0),
                 )
               ),
            ),
          ),
          Container(
            height: 150,
              margin: EdgeInsets.only(top: 10),
//            child: PageView(
////             controller: new PageController(
////               initialPage: 1,
////             ),
////              children: <Widget>[
////                 Text("PageView one"),
////                 Text("PageView two"),
////                 Text("PageView three"),
////              ],
////            ),
          child: new Swiper(itemCount: lists.length, itemBuilder:(context,index){
             return Image.network( lists[index], fit: BoxFit.fill,);
          },autoplay: false,scrollDirection: Axis.horizontal,controller: new SwiperController(),pagination: new SwiperPagination(alignment:Alignment.bottomCenter)),
          )
        ],
      ),
    );
  }
}