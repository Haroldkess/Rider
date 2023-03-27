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
import 'package:rider/presentation/screens/modals/single_prod.dart';

import '../../generalwidgets/text.dart';
import '../../uiproviders/ui_provider.dart';
import 'client.dart';

statusModal(BuildContext context) async {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  var size = MediaQuery.of(context).size;
  var padding = 8.0;

  return showModalBottomSheet(
      context: context,
      isScrollControlled: false,
      isDismissible: true,
      backgroundColor: backgroundColor,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(28))),
      builder: (context) {
        String status = "Offline";
        bool switched = false;
        UiProvider provide = Provider.of<UiProvider>(context, listen: false);
        UiProvider stream = context.watch<UiProvider>();
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            //  mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 25,
              ),
              commentHeader(context),
              Expanded(
                  child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Container(
                    height: 150,
                    width: 364,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: backgroundColor,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppTextOverPass(
                                text: stream.isSwitched ? "Online" : status,
                                fontWeight: FontWeight.w600,
                                size: 24,
                                color: textLightColor,
                              ),
                              Switch(
                                  value: stream.isSwitched,
                                  onChanged: (val) async {
                                    provide.swtch(val);
                                    if (val == true) {
                                      provide.dismiss(false);
                                    } else {
                                      provide.dismiss(true);
                                    }
                                  })
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10, left: 10),
                          child: SizedBox(
                            width: width * 0.7,
                            child: AppTextOverPass(
                              text:
                                  "You are currently online,  Users can see your location and request for delivery.",
                              color: textGreyColor,
                              size: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ))
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
