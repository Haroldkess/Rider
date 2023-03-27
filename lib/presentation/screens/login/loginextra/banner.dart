import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

import '../../../constant/color_pallate.dart';
import '../../../generalwidgets/text.dart';


class LoginRegisterBanner extends StatelessWidget {
  final String title;
  final String subTitle;
  final String svgPath;
  const LoginRegisterBanner(
      {super.key,
      required this.subTitle,
      required this.title,
      required this.svgPath});

  @override
  Widget build(BuildContext context) {
 
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Column(
        children: [
        svgPath == "" ? const SizedBox.shrink() :   SvgPicture.asset(svgPath),
          const SizedBox(
            height: 10,
          ),
          AppTextOverPass(
            text: title,
            fontWeight: FontWeight.w600,
            size: 24,
            align: TextAlign.center,
            color: textLightColor,
          ),
          const SizedBox(
            height: 15,
          ),
          AppTextMulish(
            text: subTitle,
            fontWeight: FontWeight.w400,
            size: 16,
            align: TextAlign.center,
            color: HexColor("#D4D4D4"),
          )
        ],
      ),
    );
  }
}
