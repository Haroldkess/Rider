import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class AppForm extends StatelessWidget {
  final Color? hintColor;
  final String? hint;
  final Widget? suffix;
  final Color? backColor;
  final double? borderRad;
  final double? height;
  final double? fontSize;
  final Widget? prefix;
  final bool? enable;

  const AppForm(
      {super.key,
      this.hint,
      this.hintColor,
      this.suffix,
      this.prefix,
      this.backColor,
      this.borderRad,
      this.height,
      this.fontSize,
      this.enable});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      //width: 383,
      decoration: BoxDecoration(
          color: backColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(borderRad!)),
          border: enable == null || enable!
              ? null
              : Border.all(
                  style: BorderStyle.solid, color: HexColor("#242830"))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: TextFormField(
            enabled: enable ?? true,
            style: GoogleFonts.overpass(
                color: HexColor("#D9D9D9"),
                fontSize: 16,
                fontWeight: FontWeight.w600),
            decoration: InputDecoration(
                hintText: "     $hint",
                hintStyle:
                    GoogleFonts.overpass(color: hintColor, fontSize: fontSize),
                suffixIcon: suffix,
                prefixIcon: prefix,
                border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(2.0),
                    borderSide: const BorderSide(color: Colors.transparent)),
                focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent))),
          ),
        ),
      ),
    );
  }
}
