import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant/color_pallate.dart';
import '../../functions/allNavigation.dart';
import '../../generalwidgets/text.dart';
import 'extra/delivered.dart';
import 'extra/pending.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen>
    with TickerProviderStateMixin {
  TabController? controller;
  int index = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: darkCard,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                InkWell(
                    onTap: () => PageRouting.popToPage(context),
                    splashColor: darkCard,
                    highlightColor: darkCard,
                    focusColor: darkCard,
                    child: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                          color: darkCard,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: textLightColor,
                              width: 1,
                              style: BorderStyle.solid)),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icon/leftarrow.svg",
                          height: 14,
                          width: 8,
                          color: textLightColor,
                        ),
                      ),
                    )),
                const SizedBox(
                  width: 20,
                ),
                AppTextOverPass(
                  text: "History",
                  fontWeight: FontWeight.w700,
                  size: 24,
                  color: textLightColor,
                ),
              ],
            ),
          ),
          toolbarHeight: 110,
          flexibleSpace: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TabBar(
                controller: controller,
                indicatorSize: TabBarIndicatorSize.tab,
                isScrollable: false,
                onTap: (val) {
                  setState(() {
                    index = val;
                  });
                },
                tabs: const [
                  Tab(
                    text: "Delivered",
                  ),
                  Tab(
                    text: "Canceled",
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: index == 0 ? const Pending() : const Delivered(),
        ),
      ),
    );
  }
}
