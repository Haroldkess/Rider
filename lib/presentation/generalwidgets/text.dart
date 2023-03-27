import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextOverPass extends StatelessWidget {
  String text;
  int? maxLines;
  TextOverflow? overflow;
  double? scaleFactor;
  FontWeight? fontWeight;
  Color? color;
  TextAlign? align;
  double? letterSpacing;
  double? size;
  AppTextOverPass(
      {Key? key,
      required this.text,
      this.maxLines,
      this.overflow,
      this.scaleFactor,
      this.fontWeight,
      this.align,
      this.letterSpacing,
      this.color, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textScaleFactor: scaleFactor,
      overflow: overflow,
      textAlign: align,
      style: GoogleFonts.overpass(
          textStyle: TextStyle(
        fontWeight: fontWeight,
        color: color,
        decorationStyle: TextDecorationStyle.solid,
        fontSize: size
      )),
    );
  }
}


class AppTextMulish extends StatelessWidget {
  String text;
  int? maxLines;
  TextOverflow? overflow;
  double? scaleFactor;
  FontWeight? fontWeight;
  Color? color;
  TextAlign? align;
  double? letterSpacing;
  double? size;
  AppTextMulish(
      {Key? key,
      required this.text,
      this.maxLines,
      this.overflow,
      this.scaleFactor,
      this.fontWeight,
      this.align,
      this.letterSpacing,
      this.color, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textScaleFactor: scaleFactor,
      overflow: overflow,
      textAlign: align,
      style: GoogleFonts.mulish(
          textStyle: TextStyle(
        fontWeight: fontWeight,
        color: color,
        decorationStyle: TextDecorationStyle.solid,
        fontSize: size
      )),
    );
  }
}


class AppTextCabin extends StatelessWidget {
  String text;
  int? maxLines;
  TextOverflow? overflow;
  double? scaleFactor;
  FontWeight? fontWeight;
  Color? color;
  TextAlign? align;
  double? letterSpacing;
  double? size;
  AppTextCabin(
      {Key? key,
      required this.text,
      this.maxLines,
      this.overflow,
      this.scaleFactor,
      this.fontWeight,
      this.align,
      this.letterSpacing,
      this.color, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textScaleFactor: scaleFactor,
      overflow: overflow,
      textAlign: align,
      style: GoogleFonts.cabin(
          textStyle: TextStyle(
        fontWeight: fontWeight,
        color: color,
        decorationStyle: TextDecorationStyle.solid,
        fontSize: size
      )),
    );
  }
}
