import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:dotted_line/dotted_line.dart';
import '../../../../model/history_model.dart';
import '../../../constant/color_pallate.dart';
import '../../../generalwidgets/text.dart';

class BookingCard extends StatelessWidget {
  final BookingItems item;
  const BookingCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 129,
      decoration: BoxDecoration(
          color: darkCard, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            width: 110,
            decoration: BoxDecoration(
                //   color: darkCard,
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: AssetImage("assets/pic/item.png"))),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppTextOverPass(
                    text: item.id,
                    fontWeight: FontWeight.w700,
                    size: 14,
                    color: textLightColor,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      // height: 44,
                      decoration: BoxDecoration(
                          color: item.status == "Delivered"
                              ? Colors.transparent
                              : Colors.red.withOpacity(0.1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(4)),
                          border: Border.all(
                              color: item.status == "Delivered"
                                  ? HexColor("#242830")
                                  : Colors.red.withOpacity(0.1))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: AppTextOverPass(
                          text: item.status,
                          color: item.status == "Delivered"
                              ? primaryOrange
                              : Colors.red,
                          //size: ,
                        ),
                      ),
                    ),
                    // minWidth: double.infinity,
                  )
                ],
              ),
              Row(
                children: [
                  AppTextOverPass(
                    text: item.catergory,
                    fontWeight: FontWeight.w600,
                    size: 14,
                    color: HexColor("#D4D4D4"),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      SvgPicture.asset("assets/icon/dot.svg",
                          width: 9, height: 9, color: primaryOrange),
                      DottedLine(
                        dashLength: 5,
                        dashGapLength: 1,
                        lineThickness: 1,
                        direction: Axis.vertical,
                        lineLength: 15,
                        dashColor: HexColor("#929292"),
                      ),
                      SvgPicture.asset(
                        "assets/icon/location.svg",
                        width: 9,
                        height: 9,
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
                        text: item.from,
                        fontWeight: FontWeight.w400,
                        size: 10,
                        color: HexColor("#D4D4D4"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppTextOverPass(
                        text: item.to,
                        fontWeight: FontWeight.w400,
                        size: 10,
                        color: HexColor("#D4D4D4"),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppTextOverPass(
                      text: item.date,
                      fontWeight: FontWeight.w600,
                      size: 10,
                      color: HexColor("#929292"),
                    ),
                    AppTextOverPass(
                      text: item.price,
                      fontWeight: FontWeight.w600,
                      size: 14,
                      color: HexColor("#D4D4D4"),
                    ),
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
