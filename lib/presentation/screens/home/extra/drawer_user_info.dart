import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rider/model/user_model.dart';
import 'package:rider/presentation/constant/color_pallate.dart';

import '../../../generalwidgets/text.dart';

class DrawerUserInfo extends StatelessWidget {
    final GlobalKey<ScaffoldState> scafKey;
  const DrawerUserInfo({super.key, required this.scafKey});

  @override
  Widget build(BuildContext context) {
    UserModel user = userModel.first;
    return SafeArea(
      child: SizedBox(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 106,
                    height: 107,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage(user.dp!))),
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap:  ()=> scafKey.currentState!.closeDrawer(),
                        child: CircleAvatar(
                          radius: 17,
                          backgroundColor: textLightColor,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 17,
                              color: backgroundColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              AppTextOverPass(
                text: user.userName!,
                fontWeight: FontWeight.w600,
                size: 19,
                align: TextAlign.left,
                color: textLightColor,
              ),
              // const SizedBox(
              //   height: 6,
              // ),
              AppTextOverPass(
                text: user.userName!,
                fontWeight: FontWeight.w400,
                size: 15,
                align: TextAlign.left,
                color: HexColor("#929292"),
              ),
              // const SizedBox(
              //   height: 9,
              // ),
              Row(
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
                          text: user.star!,
                          fontWeight: FontWeight.w400,
                          size: 15,
                          align: TextAlign.left,
                          color: textLightColor,
                        ),
                      ],
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
