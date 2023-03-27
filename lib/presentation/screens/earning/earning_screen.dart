import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rider/presentation/constant/color_pallate.dart';
import 'package:rider/presentation/screens/earning/earning_histrory.dart';

import '../../generalwidgets/text.dart';
import 'charts/earning_chart.dart';

class EarningScreen extends StatefulWidget {
  const EarningScreen({super.key});

  @override
  State<EarningScreen> createState() => _EarningScreenState();
}

class _EarningScreenState extends State<EarningScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.only(top: 20),
        height: height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Expanded(flex: 4, child: BarChartSample2()),
              Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Container(
                        //   height: 30,
                        padding: const EdgeInsets.only(top: 30, bottom: 13),
                        child: Row(
                          children: [
                            AppTextOverPass(
                              text: "Earning History",
                              color: HexColor("#929292"),
                              fontWeight: FontWeight.w600,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: EarningHistoryList(),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      )),
    );
  }
}
