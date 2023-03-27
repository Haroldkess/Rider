import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rider/model/earning_history.dart';
import 'package:rider/presentation/constant/color_pallate.dart';

import '../../../generalwidgets/text.dart';

class EarningCard extends StatelessWidget {
  final EarningHistory history;
  const EarningCard({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 68,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: darkCard, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppTextOverPass(
                text: history.title!,
                color: textLightColor,
                fontWeight: FontWeight.w400,
                size: 15,
              ),
              AppTextOverPass(
                text: history.amount!,
                color: primaryOrange,
                fontWeight: FontWeight.w400,
                size: 13,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              AppTextOverPass(
                text: history.dateTime!,
                color: HexColor("#929292"),
                fontWeight: FontWeight.w400,
                size: 15,
              ),
            ],
          )
        ],
      ),
    );
  }
}
