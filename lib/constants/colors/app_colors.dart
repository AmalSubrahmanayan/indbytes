import 'package:flutter/material.dart';

class AppColors {
  static const bgColor = BoxDecoration(
      gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color.fromARGB(223, 17, 23, 82),
      Color.fromARGB(225, 0, 3, 20),
    ],
  ));
  static const transparentColor = Colors.transparent;
  static const whiteColor = Colors.white;
  static const redColor = Color.fromRGBO(252, 21, 59, 1);
  static const blackColor = Colors.black;
  static const lightGreyColor = Color.fromARGB(255, 238, 238, 238);
  static const greyColor = Colors.grey;
  static const darkGreyColor = Color.fromARGB(255, 82, 82, 82);
  static const accentsColor = Color.fromARGB(255, 254, 169, 0);
}
