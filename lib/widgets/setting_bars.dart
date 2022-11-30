import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class SettingBars extends StatelessWidget {
  SettingBars({Key? key, required this.txt, required this.icn}) : super(key: key);
  final String txt;
  final IconData icn;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(27),
          // vertical: AppLayout.getHeight(5),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(8),
          vertical: AppLayout.getHeight(9),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Color(0xA3FFFFFF),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icn,
                  color: Colors.black,
                  size: 30,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: AppLayout.getWidth(6),
                  ),
                  // color: Colors.redAccent,
                  child: Text(
                    "${txt}",
                    style: Styles.textStyle,
                  ),
                ),
              ],
            ),
            Container(
              // color: Colors.redAccent,
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.black,
                size: 25,
              ),
            ),
          ],
        ),

      ),
    );
  }
}
