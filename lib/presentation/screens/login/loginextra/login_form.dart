import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

import '../../../constant/color_pallate.dart';
import '../../../functions/allNavigation.dart';
import '../../../generalwidgets/app_button.dart';
import '../../../generalwidgets/app_form.dart';
import '../../../generalwidgets/text.dart';
import '../../home/home_page.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  TapGestureRecognizer tapGestureRecognizer = TapGestureRecognizer();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //  height: 250,
          //   color: Colors.amber,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  AppTextOverPass(
                    text: "Login to continue",
                    size: 20,
                    fontWeight: FontWeight.w600,
                    color: textLightColor,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  AppTextMulish(
                    text: "Email",
                    size: 20,
                    fontWeight: FontWeight.w400,
                    color: textGreyColor,
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              forms(context, "Enter email here", const SizedBox.shrink()),
              Row(
                children: [
                  AppTextMulish(
                    text: "Password",
                    size: 20,
                    fontWeight: FontWeight.w400,
                    color: textGreyColor,
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              forms(
                context,
                "Enter password here",
              const SizedBox.shrink()
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: () {
                  //     PageRouting.pushToPage(context, const ForgetPassword());
                },
                child: AppTextMulish(
                  text: "forgot password?",
                  size: 14,
                  fontWeight: FontWeight.w400,
                  color: primaryOrange,
                ))
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        AppButton(
            width: 360,
            height: 60,
            bordercolor: primaryOrange,
            backColor: primaryOrange,
            onTap: () => PageRouting.pushToPage(context, const HomePage()),
            curves: 5,
            child: AppTextMulish(
              text: "Login",
              color: textLightColor,
              size: 20,
              fontWeight: FontWeight.w400,
            )),
        const SizedBox(
          height: 20,
        ),
        RichText(
            text: TextSpan(
                text: "Dont have an account? ",
                style: GoogleFonts.mulish(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: textGreyColor,
                        decorationStyle: TextDecorationStyle.solid,
                        fontSize: 14)),
                children: [
              TextSpan(
                text: "Sign Up Here",
                style: GoogleFonts.overpass(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: primaryOrange,
                        decorationStyle: TextDecorationStyle.solid,
                        fontSize: 14)),
                recognizer: tapGestureRecognizer
                  ..onTap = () {
                    // PageRouting.pushToPage(
                    //     context, const RegisterAsIndividual());
                  },
              ),
            ])),
        
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }

  Widget forms(BuildContext context, String hint, Widget suffix) {
    return AppForm(
      hint: hint,
      borderRad: 0,
      backColor: darkCard,
      height: 56,
      fontSize: 16,
      hintColor: Colors.grey.shade500,
      suffix: suffix,
    );
  }
}
