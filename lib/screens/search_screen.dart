import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/widgets/icon_text_widget.dart';
import 'package:book_ticket/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(15),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\nyou Looking for?",
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          Gap(AppLayout.getHeight(20)),
          // Below code is Substituted by AppTicketTabs
          // FittedBox(
          //   child: Container(
          //     padding: EdgeInsets.all(3.5),
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          //       color: Color(0xFFF4F6FD),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         // Airline Ticket
          //         Container(
          //           width: size.width * 0.44,
          //           padding:
          //               EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.horizontal(
          //                 left: Radius.circular(AppLayout.getHeight(50))),
          //             color: Colors.white,
          //           ),
          //           child: Center(child: Text("Airline Tickets")),
          //         ),
          //         // Hotel
          //         Container(
          //           width: size.width * 0.44,
          //           padding:
          //               EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.horizontal(
          //                 right: Radius.circular(AppLayout.getHeight(50))),
          //             color: Colors.transparent,
          //           ),
          //           child: Center(child: Text("Hotel")),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          const AppTicketTabs(firstTab: "Airline Tickets", secondTab: "Hotel"),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(
              textToShow: "Departure", icon: Icons.flight_takeoff_rounded),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(
            textToShow: "Arrival",
            icon: Icons.flight_land_rounded,
          ),
          Gap(AppLayout.getHeight(25)),
          InkWell(
            onTap: (){
              print("Find Tickets pressed.");
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(15),
                vertical: AppLayout.getHeight(18),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF1C45C2),
              ),
              child: Center(
                child: Text(
                  "Find Tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          const AppDoubleTextWidget(
            bigText: "Upcoming Flight",
            smallText: "View more",
          ),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(433),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(15),
                  vertical: AppLayout.getHeight(15),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(20),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "ticket_app_assets/assets/images/sit.jpg",
                          ),
                        ),
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(12),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss out this chance",
                      style: Styles.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      // Container(
                      //   margin: EdgeInsets.symmetric(
                      //     // horizontal: AppLayout.getWidth(10),
                      //     vertical: AppLayout.getHeight(10),
                      //   ),
                      //   padding: EdgeInsets.symmetric(
                      //     horizontal: AppLayout.getWidth(15),
                      //     vertical: AppLayout.getHeight(15),
                      //   ),
                      //   height: AppLayout.getHeight(175),
                      //   width: size.width * 0.44,
                      //   decoration: BoxDecoration(
                      //     color: Color(0xFF2EA485),
                      //     borderRadius: BorderRadius.circular(20),
                      //     boxShadow: [
                      //       BoxShadow(
                      //         color: Colors.grey.shade300,
                      //         blurRadius: 5,
                      //         spreadRadius: 2,
                      //       )
                      //     ],
                      //   ),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Text(
                      //         "Discount\nfor survey",
                      //         style: Styles.headLineStyle2
                      //             .copyWith(color: Colors.white, fontSize: 25),
                      //       ),
                      //       Gap(AppLayout.getHeight(5)),
                      //       Text(
                      //         "Take the survey\nabout our\nservices and\nget a discount.",
                      //         style: Styles.headLineStyle3.copyWith(
                      //             color: Colors.white,
                      //             fontWeight: FontWeight.normal),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      Container(
                        width: size.width * 0.455,
                        height: AppLayout.getHeight(207),
                        // height: size.width * 0.5,
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getWidth(14),
                            vertical: AppLayout.getHeight(14)),
                        decoration: BoxDecoration(
                          color: Color(0xFF3ab8b8),
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(18),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Take the survey about our services and get a discount.",
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 18, color: Color(0xFF189999)),
                            color: Colors.transparent,
                          ),
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18)),
                      color: Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take Love",
                          style: Styles.headLineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(5)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: '😍',
                                  style: TextStyle(fontSize: 33),
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 45),
                              ),
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 33),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ElevatedButton(
// onPressed: () {},
// child: Text(
// "Airline Tickets",
// style: Styles.headLineStyle3,
// ),
// style: ElevatedButton.styleFrom(
// backgroundColor: Styles.bgColor,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.only(
// bottomLeft: Radius.circular(AppLayout.getWidth(20)),
// topLeft: Radius.circular(AppLayout.getWidth(20)),
// ),
// ),
// ),
// ),
// ElevatedButton(
// onPressed: () {},
// child: Text(
// "Hotels",
// style: Styles.headLineStyle3,
// ),
// style: ElevatedButton.styleFrom(
// backgroundColor: Styles.bgColor,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.only(
// bottomRight: Radius.circular(20),
// topRight: Radius.circular(20),
// ),
// ),
// ),
// ),
