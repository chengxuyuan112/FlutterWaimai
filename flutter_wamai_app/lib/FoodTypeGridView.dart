import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodTypeGridView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new FoodTypeGridViewState();
  }
}

class FoodTypeGridViewState extends State<FoodTypeGridView> {
  var names = ["美食", "外面", "水果", "跑腿", "甜品", "星璇", "送药", "大牌", "秒送", "签到"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 180,
      child: GridView.builder(
          itemCount: 10,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(top: 10, bottom: 10),
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.only(bottom: 5),
                  alignment: Alignment.center,
                  child: Text(
                    names[index],
                    style: TextStyle(color: Colors.white),
                  ),
                  decoration: new BoxDecoration(
                      color: Colors.lightGreenAccent,
                      borderRadius: BorderRadius.circular(20)),
                ),
                Text("美食")
              ],
            );
          }),
    );
  }
}
