import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constant/color_pallate.dart';
import 'loginextra/banner.dart';
import 'loginextra/login_form.dart';
import 'loginextra/login_header.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const LoginHeader(),
                const SizedBox(
                  height: 10,
                ),
                const LoginRegisterBanner(
                  title: "Welcome to Wishway!",
                  subTitle: "We keep your data safe!",
                  svgPath: "assets/icon/login_img.svg",
                ),
                const SizedBox(
                  height: 30,
                ),
                LoginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
