import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rider/presentation/constant/color_pallate.dart';
import 'package:rider/presentation/generalwidgets/text.dart';
import 'package:rider/presentation/uiproviders/ui_provider.dart';

class OnlineOffline extends StatefulWidget {
  const OnlineOffline({super.key});

  @override
  State<OnlineOffline> createState() => _OnlineOfflineState();
}

class _OnlineOfflineState extends State<OnlineOffline> {
  String status = "Offline";
  bool switched = false;
  @override
  Widget build(BuildContext context) {
    UiProvider provide = Provider.of<UiProvider>(context, listen: false);
    UiProvider stream = context.watch<UiProvider>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        height: 150,
        width: 364,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
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
                        }else{
                          provide.dismiss(true);
                        }
                      })
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 10),
              child: AppTextOverPass(
                text:
                    "You are currently offline, go online to start receiving delivery request.",
                color: textGreyColor,
                size: 14,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
