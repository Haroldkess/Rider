import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:rider/presentation/constant/color_pallate.dart';
import 'package:rider/presentation/generalwidgets/app_button.dart';
import 'package:rider/presentation/generalwidgets/text.dart';
import 'package:rider/presentation/screens/modals/accept_modal.dart';
import 'package:rider/presentation/uiproviders/ui_provider.dart';

class PendingDelivery extends StatefulWidget {
  const PendingDelivery({super.key});

  @override
  State<PendingDelivery> createState() => _PendingDeliveryState();
}

class _PendingDeliveryState extends State<PendingDelivery> {
  @override
  Widget build(BuildContext context) {
    UiProvider provide = Provider.of<UiProvider>(context, listen: false);
    UiProvider stream = context.watch<UiProvider>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        height: 150,
        width: 364,
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                AppTextOverPass(
                  text: "Pending Delivery",
                  fontWeight: FontWeight.w600,
                  size: 24,
                  color: textLightColor,
                ),
              ],
            ),
            Row(
              children: [
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
                        text: " 12km",
                        style: GoogleFonts.overpass(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: textLightColor,
                                decorationStyle: TextDecorationStyle.solid,
                                fontSize: 14)),
                      ),
                    ])),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppTextOverPass(
                  text: "20 mins ago",
                  color: Colors.white60,
                  size: 14,
                  fontWeight: FontWeight.w400,
                ),
                AppButton(
                  width: 95,
                  height: 30,
                  bordercolor: HexColor("#2873FF"),
                  backColor: Colors.transparent,
                  onTap: () {
                    acceptModal(context);
                  },
                  curves: 48,
                  child: AppTextOverPass(
                    text: "Picked -up",
                    color: HexColor("#2873FF"),
                    size: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
