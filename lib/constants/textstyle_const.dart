import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/color_const.dart';

class TextStyleConst {
  static TextStyle tabTextStyle = const TextStyle(fontSize: 7, fontFamily: "Helvetica");
  static TextStyle videoTitleStyle = TextStyle(
      fontSize: 16,
      fontFamily: "Helvetica",
      color: ColorPallette.tabBarSelectedIconsColor,
      fontWeight: FontWeight.normal);
  static TextStyle videoInfoStyle = TextStyle(
      fontSize: 14,
      fontFamily: "Helvetica",
      color: ColorPallette.tabBarUnselectedIconsColor);
  static TextStyle youtube = const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400);
}
