import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class hotelScreen extends StatelessWidget {
  hotelScreen({Key? key, required this.hotel}) : super(key: key);
  final Map<String,dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.57,
      height: AppLayout.getHeight(350),
      margin: EdgeInsets.only(top: AppLayout.getHeight(12), right: AppLayout.getWidth(17), bottom: AppLayout.getHeight(5)),
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(15),
        vertical: AppLayout.getHeight(17),
      ),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            // color: Colors.grey,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // width: 180,
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "${hotel["imgLink"] as String}",
                ),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            hotel["feature"],
            style: Styles.headLineStyle2.copyWith(
              color: Styles.kakiColor,
            ),
          ),
          Gap(AppLayout.getHeight(5)),
          Text(
            hotel["location"],
            style: Styles.headLineStyle3.copyWith(
              color: Colors.white,
            ),
          ),
          Gap(AppLayout.getHeight(8)),
          Text(
            "\$${hotel["Rate"]}/night",
            style: Styles.headLineStyle1.copyWith(
              color: Styles.kakiColor,
            ),
          ),
        ],
      ),
    );
  }
}
