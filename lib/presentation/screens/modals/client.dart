import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rider/presentation/constant/color_pallate.dart';

import '../../generalwidgets/text.dart';

class ClientWidget extends StatelessWidget {
  const ClientWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Container(
        height: 68,
        width: 364,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: HexColor("#242830"),
          borderRadius: BorderRadius.circular(9.13),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 32,
                  width: 32,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/pic/driver.png"))),
                ),
                const SizedBox(
                  width: 8,
                ),
                AppTextOverPass(
                  text: "Miracle Ages",
                  color: HexColor("#D4D4D4"),
                  fontWeight: FontWeight.w400,
                  size: 13,
                ),
              ],
            ),
            SvgPicture.asset(
              "assets/icon/phone.svg",
              color: textLightColor,
            )
          ],
        ),
      ),
    );
  }
}
