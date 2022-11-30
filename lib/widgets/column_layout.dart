import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  AppColumnLayout(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.alignment,
      this.isColor,this.img, this.scale})
      : super(key: key);
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  final dynamic img;
  final double? scale;
  @override
  Widget build(BuildContext context) {
    return Column(
      // style: (isColor==null) ? Styles.headLineStyle3.copyWith(color: Colors.white,) : Styles.headLineStyle3.copyWith(color: Colors.black),
      crossAxisAlignment: alignment,
      children: [
        (img==null) ? Text(
          "$firstText",
          style: (isColor == null)
              ? Styles.headLineStyle3.copyWith(
            color: Colors.white,
          )
              : Styles.headLineStyle3.copyWith(
            color: Colors.black,
          ),
        ) : Row(
          children: [
            // Container(
            //   height: 20,width: 30,
            //   decoration: BoxDecoration(
            //       image: DecorationImage(
            //           image: AssetImage("${img}",scale: scale),
            //       ),
            //   ),
            // ),
            Image.asset("${img}",scale: scale,),
            Text(
              "$firstText",
              style: (isColor == null)
                  ? Styles.headLineStyle3.copyWith(
                color: Colors.white,
              )
                  : Styles.headLineStyle3.copyWith(
                color: Colors.black,
              ),
            )
          ],
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          "$secondText",
          style: (isColor == null)
              ? Styles.headLineStyle3.copyWith(
                  color: Colors.white,
                )
              : Styles.headLineStyle3,
        ),
      ],
    );
  }
}
