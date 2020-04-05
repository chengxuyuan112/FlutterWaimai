import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutterwamaiapp/FoodTypeGridView.dart';
import 'package:flutterwamaiapp/Location.dart';

import 'TakeAwayTitle.dart';

class TakeAway extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: <Widget>[
//              new TakeTitleWidget(),
//           ],
//         )
//       ),
//    );
    //constrain expand container
    return    SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Text("wawawaaaw"),
          new TakeTitleWidget(),
          Container(
            //  height: 180,
            //  constraints: BoxConstraints.tight(Size(double.infinity, 180)),
            //   constraints:BoxConstraints.expand(),
            constraints: BoxConstraints.loose(Size(double.infinity, 180)),
            // constraints: BoxConstraints.tightFor(),
            child: new Swiper(
              //  pagination: new SwiperPagination(alignment: Alignment.bottomCenter),
              itemCount: 2,
              itemBuilder: (context, index) {
                return new FoodTypeGridView();
              },
            ),
          )
        ],
      ),
    );
  }
}
