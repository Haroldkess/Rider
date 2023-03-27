import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rider/model/prod_model.dart';
import 'package:rider/presentation/generalwidgets/text.dart';

class SingleProd extends StatelessWidget {
  final ProdModel prod;
  const SingleProd({super.key, required this.prod});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 82,
                width: 82,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.13),
                    image: DecorationImage(image: AssetImage(prod.image!))),
              ),
            )
          ],
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTextOverPass(
              text: prod.title!,
              color: HexColor("#D4D4D4"),
              fontWeight: FontWeight.w400,
              size: 13,
            ),
            const SizedBox(
              height: 9,
            ),
            AppTextOverPass(
              text: prod.cat!,
              color: HexColor("#D4D4D4"),
              fontWeight: FontWeight.w400,
              size: 13,
            ),
            const SizedBox(
              height: 9,
            ),
            AppTextOverPass(
              text: prod.stock!,
              color: HexColor("#D4D4D4"),
              fontWeight: FontWeight.w400,
              size: 13,
            ),
            const SizedBox(
              height: 9,
            ),
            AppTextOverPass(
              text: prod.weight!,
              color: HexColor("#D4D4D4"),
              fontWeight: FontWeight.w400,
              size: 13,
            ),
            const SizedBox(
              height: 9,
            ),
            AppTextOverPass(
              text: prod.frag!,
              color: HexColor("#D4D4D4"),
              fontWeight: FontWeight.w400,
              size: 13,
            ),
            const SizedBox(
              height: 9,
            ),
          ],
        )
      ],
    );
  }
}

class SingleProdDone extends StatelessWidget {
  final ProdModel prod;
  const SingleProdDone({super.key, required this.prod});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 127,
                width: 148,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.13),
                    image: DecorationImage(image: AssetImage(prod.image!))),
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                AppTextOverPass(
                  text: prod.title!,
                  color: HexColor("#D4D4D4"),
                  fontWeight: FontWeight.w400,
                  size: 13,
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            AppTextOverPass(
              text: prod.cat!,
              color: HexColor("#D4D4D4"),
              fontWeight: FontWeight.w400,
              size: 13,
            ),
            const SizedBox(
              height: 9,
            ),
            AppTextOverPass(
              text: prod.stock!,
              color: HexColor("#D4D4D4"),
              fontWeight: FontWeight.w400,
              size: 13,
            ),
            const SizedBox(
              height: 9,
            ),
            AppTextOverPass(
              text: prod.weight!,
              color: HexColor("#D4D4D4"),
              fontWeight: FontWeight.w400,
              size: 13,
            ),
            const SizedBox(
              height: 9,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: AppTextOverPass(
                text: prod.frag!,
                color: HexColor("#D4D4D4"),
                fontWeight: FontWeight.w400,
                size: 13,
              ),
            ),
            const SizedBox(
              height: 9,
            ),
          ],
        )
      ],
    );
  }
}
