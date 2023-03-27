import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:rider/presentation/screens/profile/profileextra/profile_id.dart';
import 'package:rider/presentation/screens/profile/profileextra/profile_info.dart';
import 'package:rider/presentation/screens/profile/profileextra/settings_tile.dart';

import '../../../model/setting_model.dart';
import '../../constant/color_pallate.dart';
import '../../generalwidgets/text.dart';
import '../../uiproviders/ui_provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String status = "Offline";
  bool switched = false;
  @override
  Widget build(BuildContext context) {
    UiProvider provide = Provider.of<UiProvider>(context, listen: false);
    UiProvider stream = context.watch<UiProvider>();
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
            child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const ProfileInfo(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppTextOverPass(
                    text: stream.isSwitched ? "Online" : status,
                    fontWeight: FontWeight.w600,
                    size: 24,
                    color: textLightColor,
                  ),
                  Switch(
                      value: stream.isSwitched,
                      onChanged: (val) async {
                        provide.swtch(val);
                        if (val == true) {
                          provide.dismiss(false);
                        } else {
                          provide.dismiss(true);
                        }
                      })
                ],
              ),
            ),

            // const ProfileId(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: drawerTiles
                    .map((e) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: ProfileTile(path: e.svgPath, title: e.title),
                        ))
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icon/logout.svg",
                  color: primaryOrange,
                ),
                const SizedBox(
                  width: 10,
                ),
                AppTextOverPass(
                  text: "Logout",
                  fontWeight: FontWeight.w600,
                  size: 18,
                  align: TextAlign.center,
                  color: primaryOrange,
                ),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
          ],
        )),
      ),
    );
  }
}
