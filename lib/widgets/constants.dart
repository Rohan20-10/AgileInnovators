import 'dart:ui';

import 'package:flutter/material.dart';

class Constants{
  final primarycolor = const Color(0xffff660e);
  final blackcolor = const Color(0xff202020);
  final darkgrey = const Color(0xff999999);
  final lightgrey = const Color(0xffe3e3e3);
  final themecolor = const Color(0xff58523a);
  final sellertheme = const Color.fromARGB(255, 150, 243, 250);
  final buyertheme = const Color.fromARGB(255, 245, 127, 20);
  final orange = const Color(0xffff660e);
  final blue = const Color(0xff202020);
  final grey = const Color(0xfff5f5f5);
  final white = const Color(0xffe3e3e3);
}
void showSnackbar(context, color, message){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar
    (content: Text(message, style: TextStyle(fontSize: 14),),
      backgroundColor: color,duration: Duration(seconds: 3),
      action : SnackBarAction(label: "Ok", onPressed:(){},)));}