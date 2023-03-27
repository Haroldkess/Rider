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
import 'package:rider/presentation/generalwidgets/app_button.dart';
import 'package:rider/presentation/screens/modals/complete_modal.dart';
import 'package:rider/presentation/screens/modals/delivery_done_modal.dart';
import 'package:rider/presentation/screens/modals/single_prod.dart';

import '../../functions/allNavigation.dart';
import '../../generalwidgets/text.dart';
import 'client.dart';

confirmModal(BuildContext context) async {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  var size = MediaQuery.of(context).size;
  var padding = 8.0;

  return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      backgroundColor: backgroundColor,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(28))),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 25,
              ),
              commentHeader(context),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            SvgPicture.asset("assets/icon/dot.svg",
                                width: 15, height: 15, color: primaryOrange),
                            const SizedBox(
                              height: 5,
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
                              height: 5,
                            ),
                            SvgPicture.asset(
                              "assets/icon/location.svg",
                              width: 15,
                              height: 15,
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
                            AppTextOverPass(
                              text: "21 Bartus Street, Abuja Nigeria",
                              fontWeight: FontWeight.w400,
                              size: 15,
                              color: HexColor("#D4D4D4"),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            AppTextOverPass(
                              text: "21 Bartus Street, Abuja Nigeria",
                              fontWeight: FontWeight.w400,
                              size: 15,
                              color: HexColor("#D4D4D4"),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Column(
                      children: prod.map((e) => SingleProd(prod: e)).toList(),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              const ClientWidget(),
              const SizedBox(
                height: 20,
              ),
              button(context, primaryOrange, primaryOrange, textLightColor, () {
                PageRouting.popToPage(context);
                deliveryDoneModal(context);
              }, "Confirm Pickup"),
              const SizedBox(
                height: 15,
              ),
              button(context, Colors.transparent, HexColor("#242830"),
                  primaryOrange, () {}, "Cancel"),
            ],
          ),
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

button(BuildContext context, Color back, Color border, Color textColor,
    VoidCallback tap, String text) {
  return AppButton(
    width: 373,
    height: 60,
    bordercolor: border,
    backColor: back,
    onTap: tap,
    curves: 9,
    child: AppTextOverPass(
      text: text,
      color: textColor,
      fontWeight: FontWeight.w400,
      size: 20,
      align: TextAlign.center,
    ),
  );
}
