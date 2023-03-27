import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:rider/presentation/constant/color_pallate.dart';
import 'package:rider/presentation/generalwidgets/app_button.dart';
import 'package:rider/presentation/generalwidgets/text.dart';
import 'package:rider/presentation/screens/modals/accept_modal.dart';
import 'package:rider/presentation/uiproviders/ui_provider.dart';

class FloatingMessage extends StatelessWidget {
  const FloatingMessage({super.key});

  @override
  Widget build(BuildContext context) {
    UiProvider provide = Provider.of<UiProvider>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 120),
      child: FadeInDown(
        duration: const Duration(seconds: 1),
        animate: true,
        child: Container(
          width: 350,
          height: 150,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: HexColor("#2873FF"),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextOverPass(
                text: "Delivery Request",
                color: textLightColor,
                size: 24,
                fontWeight: FontWeight.w600,
              ),
              RichText(
                  text: TextSpan(
                      text: "21 Bartus Street, Enugu.",
                      style: GoogleFonts.mulish(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white60,
                              decorationStyle: TextDecorationStyle.solid,
                              fontSize: 14)),
                      children: [
                    TextSpan(
                      text: "  12km 2omins",
                      style: GoogleFonts.overpass(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: textLightColor,
                              decorationStyle: TextDecorationStyle.solid,
                              fontSize: 14)),
                    ),
                  ])),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppButton(
                    width: 91,
                    height: 28,
                    bordercolor: HexColor("#2873FF"),
                    backColor: HexColor("#2873FF"),
                    onTap: () {
                      provide.dismiss(true);
                    },
                    curves: 0,
                    child: AppTextOverPass(
                      text: "Reject",
                      color: textLightColor,
                      size: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  AppButton(
                    width: 91,
                    height: 28,
                    bordercolor: textLightColor,
                    backColor: textLightColor,
                    onTap: () async {
                      provide.dismiss(true);
                      acceptModal(context);
                    },
                    curves: 10,
                    child: AppTextOverPass(
                      text: "Accept",
                      color: HexColor("#2873FF"),
                      size: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
