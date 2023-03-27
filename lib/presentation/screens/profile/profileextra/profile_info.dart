import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

import '../../../constant/color_pallate.dart';
import '../../../generalwidgets/app_button.dart';
import '../../../generalwidgets/text.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 160,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: primaryOrange,
                shape: BoxShape.circle,
                border: Border.all(
                    width: 3, style: BorderStyle.solid, color: primaryOrange),
                image: const DecorationImage(
                    image: AssetImage("assets/pic/dp.png"))),
          ),
          const SizedBox(
            height: 10,
          ),
          AppTextOverPass(
            text: "Gwill ventures",
            fontWeight: FontWeight.w600,
            size: 14,
            align: TextAlign.center,
            color: textLightColor,
          ),
          const SizedBox(
            height: 10,
          ),
          AppTextOverPass(
            text: "gwillventures@gmail.com",
            fontWeight: FontWeight.w400,
            size: 14,
            align: TextAlign.center,
            color: HexColor("#4F555C"),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icon/Star.svg",
                color: primaryOrange,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppTextOverPass(
                      text: "5.0 (21)",
                      fontWeight: FontWeight.w400,
                      size: 15,
                      align: TextAlign.left,
                      color: textLightColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          AppButton(
            width: 132,
            height: 20,
            bordercolor: primaryOrange,
            backColor: Colors.transparent,
            onTap: () {},
            curves: 12,
            child: AppTextOverPass(
              text: "Rider",
              fontWeight: FontWeight.w600,
              size: 15,
              align: TextAlign.center,
              color: primaryOrange,
            ),
          )
        ],
      ),
    );
  }
}
