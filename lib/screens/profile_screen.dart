import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:book_ticket/widgets/column_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: AppLayout.getWidth(11)),
                    child: Container(
                      height: AppLayout.getHeight(80),
                      width: AppLayout.getWidth(80),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(15)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "ticket_app_assets/assets/images/img_1.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Book Tickets",
                        style: Styles.headLineStyle1
                            .copyWith(color: Styles.textColor),
                      ),
                      Text("New-York", style: Styles.headLineStyle4),
                      Container(
                        padding: EdgeInsets.only(
                            top: AppLayout.getHeight(4),
                            bottom: AppLayout.getHeight(4),
                            right: AppLayout.getWidth(5)),
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(15)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Styles.primaryColor,
                              ),
                              child: Icon(
                                FluentSystemIcons.ic_fluent_shield_filled,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                            Text(
                              "Premium Status",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Styles.primaryColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                // color: Colors.redAccent,
                height: 90,
                padding: EdgeInsets.only(
                    right: AppLayout.getWidth(5), top: AppLayout.getHeight(5)),
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap:(){print("Edit Tapped");},
                  child: Text(
                    "Edit",
                    style: Styles.headLineStyle3
                        .copyWith(color: Styles.primaryColor),
                  ),
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                // padding: EdgeInsets.symmetric(
                //   horizontal: AppLayout.getWidth(35),
                //   vertical: AppLayout.getHeight(20),
                // ),
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 18,
                      color: Color(0xFF143FCE),
                    ),
                  ),
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                ),
              ),
              Container(
                height: AppLayout.getHeight(90),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(30),
                  vertical: AppLayout.getHeight(20),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      // margin: EdgeInsets.only(right: AppLayout.getWidth(10)),
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 30,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getWidth(6)),
                    Column(
                      children: [
                        Text(
                          "You've got a new award",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(23)),
          Text(
            "Accumulated miles",
            style: Styles.headLineStyle2,
          ),
          Gap(AppLayout.getHeight(34)),
          Text(
            "192802",
            style: Styles.headLineStyle1.copyWith(fontSize: 45),
            textAlign: TextAlign.center,
          ),
          Gap(AppLayout.getHeight(30)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accrued", style: Styles.headLineStyle4),
                    Text("11 June 2022", style: Styles.headLineStyle4),
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "23 042",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnLayout(
                      firstText: "Airline CO",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "24",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnLayout(
                      firstText: "McDoanal's",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "52 340",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnLayout(
                      firstText: "DBestech",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "How to get more miles",
                    style: Styles.headLineStyle3.copyWith(
                      color: Styles.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
