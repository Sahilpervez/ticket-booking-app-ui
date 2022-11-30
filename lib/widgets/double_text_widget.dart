import 'package:book_ticket/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppDoubleTextWidget extends StatelessWidget {
  const AppDoubleTextWidget({Key? key, required this.bigText, required this.smallText}) : super(key: key);
  final String bigText;
  final String smallText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          bigText,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            print("View all Upcoming Flights tapped");
          },
          child: Text(
            smallText,
            style: Styles.textStyle
                .copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }
}

