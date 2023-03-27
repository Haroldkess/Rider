import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rider/presentation/constant/color_pallate.dart';

class HomeHeader extends StatelessWidget {
  final GlobalKey<ScaffoldState> scafKey;

  const HomeHeader({super.key, required this.scafKey});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap:  () => scafKey.currentState!.openDrawer(),
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: SvgPicture.asset(
                    "assets/icon/nav.svg",
                    width: 24,
                    height: 18,
                  ),
                ),
              ),
            ),
            SvgPicture.asset("assets/icon/dot.svg")
          ],
        ),
      ),
    );
  }
}
