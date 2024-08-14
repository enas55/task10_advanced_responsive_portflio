import 'package:flutter/material.dart';

class ColorsUtility {
  static const lightGrey = Color(0xfff2f5f9);
  static const white = Color(0xffffffff);
  static const lightOrange = Color(0xffff9a1a);
  static const deepOrange = Color(0xffef300b);
  static const lightRed = Color(0xffffebd1);
  static const semiLightGrey = Color(0xffebf2fa);
  static const semiWhite = Color(0xfff2f7fc);
  static const gradient = LinearGradient(colors: [
    ColorsUtility.lightOrange,
    ColorsUtility.deepOrange,
  ], begin: Alignment.topLeft, end: Alignment.bottomRight);
}
