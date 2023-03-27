import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../constant/color_pallate.dart';
import '../../../generalwidgets/text.dart';


class ProfileId extends StatelessWidget {
  const ProfileId({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 48,
      // alignment: Alignment.center,
      decoration: BoxDecoration(
          color: HexColor("#242830"),
          borderRadius: BorderRadius.circular(52),
          shape: BoxShape.rectangle),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppTextOverPass(
                    text: "User ID: ",
                    fontWeight: FontWeight.w600,
                    size: 14,
                    align: TextAlign.center,
                    color: HexColor("#474747"),
                  ),
                  AppTextOverPass(
                    text: "  34432DE",
                    fontWeight: FontWeight.w600,
                    size: 24,
                    align: TextAlign.center,
                    color: textLightColor,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              height: 55,
              width: 81,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: primaryOrange,
                  borderRadius: BorderRadius.circular(52),
                  shape: BoxShape.rectangle),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: AppTextOverPass(
                      text: "Copy",
                      fontWeight: FontWeight.w400,
                      size: 18,
                      align: TextAlign.start,
                      color: textLightColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
