import 'package:book_ticket/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:book_ticket/utils/app_info_list.dart';
import 'package:gap/gap.dart';

class hotels12 extends StatelessWidget {
  const hotels12({Key? key, required this.hotelDet}) : super(key: key);
  final Map<String, dynamic> hotelDet;
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.57,
      alignment: Alignment.center,
      margin: EdgeInsets.only(/*left:10,*/ top: 20, bottom: 20, right: 17),
      padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xff5d70a5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 183,
            width: 205,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "${hotelDet["imgLink"] as String}",
                ),
              ),
            ),
          ),
          Gap(10),
          SizedBox(
            width: 200,
            child: Text(
              hotelDet["feature"],
              style: Styles.headLineStyle2.copyWith(
                color: Colors.grey.shade400,
              ),
              // style: Styles.headLineStyle3,
              textAlign: TextAlign.start,
            ),
          ),
          Gap(5),
          SizedBox(
            width: 200,
            child: Text(
              hotelDet["location"],
              style: Styles.headLineStyle3.copyWith(
                color: Colors.white,
              ),
              // style: Styles.headLineStyle3,
              textAlign: TextAlign.start,
            ),
          ),
          Gap(8),
          SizedBox(
            width: 200,
            child: Text(
              "\$${hotelDet["Rate"]}/night",
              style: Styles.headLineStyle1.copyWith(
                color: Colors.grey.shade400,
              ),
              // style: Styles.headLineStyle3,
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
