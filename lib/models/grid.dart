import 'package:flutter/material.dart';

class GridData{

  Icon? icons;
  String? text1;
  String? text2;

  GridData({this.icons,this.text1,this.text2});
}

List <GridData> tiles = [
  GridData(
   // icons: Icon(Icons.calendar_today_outlined,),
    text1: "FREQUENCY",
    text2: "1/week"
  ),
  GridData(
    text1: "1/week",
    text2: "250 ml"
  ),
  GridData(
    text1: "TEMP",
    text2: "15-24 c"
  ),
  GridData(
    text1: "LIGHT",
    text2: "Low"
  )
];