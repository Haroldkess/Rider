import 'dart:developer';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:provider/provider.dart';
import 'package:rider/model/prod_model.dart';
import 'package:rider/presentation/constant/color_pallate.dart';
import 'package:rider/presentation/functions/allNavigation.dart';
import 'package:rider/presentation/generalwidgets/app_button.dart';
import 'package:rider/presentation/screens/modals/single_prod.dart';

import '../../generalwidgets/text.dart';
import 'client.dart';

deliveryDoneModal(BuildContext context) async {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  var size = MediaQuery.of(context).size;
  var padding = 8.0;

  return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(28))),
      builder: (context) {
        return Scaffold(
          backgroundColor: backgroundColor,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // const SizedBox(
                //   height: 25,
                // ),
                // commentHeader(context),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        PageRouting.popToPage(context);
                      },
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: HexColor("#242830")),
                        child: Icon(
                          Icons.clear,
                          size: 20,
                          color: textLightColor,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 127,
                      width: 148,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.13),
                          image: const DecorationImage(
                              image: AssetImage("assets/pic/complete.png"))),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AppTextOverPass(
                      text: "Delivery complete",
                      fontWeight: FontWeight.w400,
                      size: 23,
                      color: primaryOrange,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AppTextOverPass(
                      text: "You earned #50.00",
                      fontWeight: FontWeight.w400,
                      size: 18,
                      color: textLightColor,
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children:
                              prod.map((e) => SingleProdDone(prod: e)).toList(),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        deliveryCord(),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 2,
                  color: textGreyColor,
                  thickness: 1.0,
                )
              ],
            ),
          ),
          persistentFooterButtons: [footer(context)],
        );
      });
}

commentHeader(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        color: HexColor("#929292"),
        height: 5,
        width: 85,
      )
    ],
  );
}

deliveryCord() {
  return Row(
    children: [
      Column(
        children: [
          SvgPicture.asset("assets/icon/dot.svg",
              width: 20, height: 20, color: HexColor("#1F8858")),
          const SizedBox(
            height: 18,
          ),
          DottedLine(
            dashLength: 5,
            dashGapLength: 1,
            lineThickness: 2,
            direction: Axis.vertical,
            lineLength: 25,
            dashColor: HexColor("#B2B5C4"),
          ),
          const SizedBox(
            height: 18,
          ),
          SvgPicture.asset(
            "assets/icon/location.svg",
            width: 20,
            height: 20,
            color: primaryOrange,
          ),
        ],
      ),
      const SizedBox(
        width: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextOverPass(
                text: "21 Bartus Street, Abuja Nigeria",
                fontWeight: FontWeight.w400,
                size: 20,
                color: HexColor("#D4D4D4"),
              ),
              AppTextOverPass(
                text: "Pick up 12:05PM",
                fontWeight: FontWeight.w400,
                size: 15,
                color: HexColor("#929292"),
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextOverPass(
                text: "21 Bartus Street, Abuja Nigeria",
                fontWeight: FontWeight.w400,
                size: 15,
                color: HexColor("#D4D4D4"),
              ),
              AppTextOverPass(
                text: "Drop off 12:28PM",
                fontWeight: FontWeight.w400,
                size: 15,
                color: HexColor("#929292"),
              ),
            ],
          ),
        ],
      )
    ],
  );
}

footer(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppTextOverPass(
          text: "Tue, 23 Feb 2020 12:00PM",
          fontWeight: FontWeight.w400,
          size: 13,
          color: HexColor("#929292"),
        ),
        AppTextOverPass(
          text: "ID: 2130812309",
          fontWeight: FontWeight.w400,
          size: 13,
          color: HexColor("#929292"),
        ),
      ],
    ),
  );
}
