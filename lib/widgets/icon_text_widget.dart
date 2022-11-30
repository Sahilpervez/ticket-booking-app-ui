import 'package:book_ticket/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  const AppIconText({Key? key, this.textToShow, required this.icon}) : super(key: key);
  final textToShow;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(12),
        vertical: AppLayout.getHeight(12),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0xFFBFC2DF),
          ),
          Gap(AppLayout.getWidth(10)),
          Text(
            "${textToShow}",
            style: Styles.textStyle,
          ),
        ],
      ),
    );
  }
}
