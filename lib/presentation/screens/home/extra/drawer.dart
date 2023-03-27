import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:rider/model/setting_model.dart';
import 'package:rider/presentation/functions/allNavigation.dart';
import 'package:rider/presentation/screens/earning/earning_screen.dart';
import 'package:rider/presentation/screens/history/history.dart';
import 'package:rider/presentation/screens/home/extra/drawer_user_info.dart';
import 'package:rider/presentation/screens/home/extra/online_offline.dart';
import 'package:rider/presentation/screens/profile/profile_screen.dart';

import '../../../constant/color_pallate.dart';
import '../../../generalwidgets/text.dart';
import '../../../uiproviders/ui_provider.dart';
import '../../profile/profileextra/settings_tile.dart';

class DrawerSide extends StatefulWidget {
  final GlobalKey<ScaffoldState> scafKey;
  const DrawerSide({super.key, required this.scafKey});

  @override
  State<DrawerSide> createState() => _DrawerSideState();
}

class _DrawerSideState extends State<DrawerSide> {
  String status = "Offline";
  bool switched = false;
  @override
  Widget build(BuildContext context) {
    UiProvider provide = Provider.of<UiProvider>(context, listen: false);
    UiProvider stream = context.watch<UiProvider>();
    return Drawer(
      backgroundColor: HexColor("#242830"),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              DrawerUserInfo(
                scafKey: widget.scafKey,
              ),
              //   const SizedBox(
              //     height: 30,
              //   ),
              //   const ProfileInfo(),
              //   const SizedBox(
              //     height: 30,
              //   ),
              //  // const ProfileId(),

              const SizedBox(
                height: 50,
              ),
              Row(
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
         
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: drawerTiles
                      .map((e) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: ProfileTile(
                              path: e.svgPath,
                              title: e.title,
                              onTap: () {
                                if (e.title == "Delivery History") {
                                  PageRouting.pushToPage(
                                      context, const HistoryScreen());
                                } else if (e.title == "Settings") {
                                  PageRouting.pushToPage(
                                      context, const ProfileScreen());
                                }
                                else if (e.title == "Earnings") {
                                  PageRouting.pushToPage(
                                      context, const EarningScreen());
                                }
                              },
                            ),
                          ))
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              const SizedBox(
                height: 70,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
