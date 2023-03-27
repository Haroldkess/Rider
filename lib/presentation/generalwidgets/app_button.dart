import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppButton extends StatelessWidget {
  final double width;
  final double height;
  final Color bordercolor;
  final Color backColor;
  VoidCallback onTap;
  final double curves;
  final Widget child;
  AppButton(
      {super.key,
      required this.width,
      required this.height,
      required this.bordercolor,
      required this.backColor,
      required this.onTap,
      required this.curves,
     required this.child});

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            backgroundColor:
                backColor ,
            fixedSize: Size(width, height),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(curves),
            ),
            side: BorderSide(
                color: bordercolor, width: 1.0, style: BorderStyle.solid)),
        onPressed: onTap,
        child: child);
  }
}
