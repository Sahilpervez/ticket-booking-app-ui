import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/setting_bars.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(10),
            vertical: AppLayout.getHeight(30)),
        children: [
          Gap(AppLayout.getHeight(20)),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Icon(
                  Icons.arrow_back_outlined,
                  size: 30,
                ),
              ),
              Flexible(
                flex: 10,
                child: Container(
                  alignment: Alignment.center,
                  // padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(120)),
                  // color: Colors.redAccent,
                  child: Text(
                    "Settings",
                    style: Styles.headLineStyle1,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(44)),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(27),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(12),
              vertical: AppLayout.getHeight(8),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Styles.primaryColor,
                ),
                InkWell(
                  onTap: (){print("Search for Settings pressed");},
                  child: Container(
                    padding: EdgeInsets.only(
                      left: AppLayout.getWidth(6),
                    ),
                    // color: Colors.redAccent,
                    child: Text(
                      "Search for a setting...",
                      style: Styles.textStyle.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(30)),
          Gap(AppLayout.getHeight(10)),
          SettingBars(
              txt: "Account",
              icn: FluentSystemIcons.ic_fluent_person_accounts_regular),
          Gap(AppLayout.getHeight(10)),
          SettingBars(
              txt: "Notifications", icn: Icons.notifications_active_outlined),
          Gap(AppLayout.getHeight(10)),
          SettingBars(txt: "Appearance", icn: Icons.remove_red_eye_outlined),
          Gap(AppLayout.getHeight(10)),
          SettingBars(
              txt: "Privacy & Security",
              icn: FluentSystemIcons.ic_fluent_lock_regular),
          Gap(AppLayout.getHeight(10)),
          SettingBars(txt: "Help and Support", icn: Icons.headphones),
          Gap(AppLayout.getHeight(10)),
          SettingBars(txt: "About", icn: Icons.question_mark_sharp),
          Gap(AppLayout.getHeight(10)),
          TextButton(
            onPressed: (){},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.logout,color: Styles.primaryColor,),
                Text(
                  "LOGOUT",
                  style: Styles.headLineStyle3.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.logout,
                      color: Styles.primaryColor,
                    ),
                    Text(
                      "LOGOUT",
                      style: Styles.headLineStyle3.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
