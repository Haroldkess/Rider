import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rider/presentation/screens/home/extra/drawer.dart';
import 'package:rider/presentation/screens/home/extra/floating_message.dart';
import 'package:rider/presentation/screens/home/extra/header.dart';
import 'package:rider/presentation/screens/home/extra/online_offline.dart';
import 'package:rider/presentation/screens/home/extra/pending.dart';

import '../../uiproviders/ui_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    UiProvider stream = context.watch<UiProvider>();
    return Scaffold(
      key: key,
      drawer: DrawerSide(
        scafKey: key,
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage("assets/pic/map.png"))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HomeHeader(
                  scafKey: key,
                ),
                stream.isDismissed
                    ? const OnlineOffline()
                    : const PendingDelivery()
              ],
            ),
          ),
          stream.isDismissed
              ? const SizedBox.shrink()
              : const Align(
                  alignment: Alignment.topCenter, child: FloatingMessage())
        ],
      ),
    );
  }
}
