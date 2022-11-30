// import 'package:book_ticket/screens/hotel_cards.dart';
import 'package:book_ticket/screens/hotel_screen.dart';
import 'package:book_ticket/screens/ticket_view.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:book_ticket/utils/app_info_list.dart';

import '../utils/app_layout.dart';
import '../widgets/double_text_widget.dart';

// Learned about SingleChildScrollView() gives us
// single child which can have many children

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headLineStyle3,
                        ),
                        Gap(AppLayout.getWidth(5)),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: AppLayout.getWidth(50),
                      height: AppLayout.getHeight(50),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(10)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "ticket_app_assets/assets/images/img_1.png"),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(12)),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    color: const Color(0xffF4F6Fd),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFbfc205),
                      ),
                      Gap(AppLayout.getWidth(3)),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(40)),
                const AppDoubleTextWidget(
                  bigText: "Upcoming Flights",
                  smallText: "View all",
                ),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(
              left: AppLayout.getWidth(20),
              bottom: AppLayout.getHeight(10),
              top: AppLayout.getHeight(10),
            ),
            child: Row(
              children: [
                TicketView(ticketDetails[0]),
                TicketView(ticketDetails[1]),
              ],
            ),
          ),
          const Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: const AppDoubleTextWidget(
              bigText: "Hotels",
              smallText: "View all",
            ),
          ),
          // SizedBox(
          //   height: 200,width: 10,
          // ),
          // Container(
          //   height: 200,width: 10,
          //   color: Colors.orange,
          // ),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   padding: EdgeInsets.only(left: 22, right: 20),
          //   child: Row(
          //     children: hotelList.map((item)=> hotels12(hotelDet: item)).toList(),
          //   ),
          // ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(
                left: AppLayout.getWidth(22), right: AppLayout.getWidth(20)),
            // margin: EdgeInsets.only(top: 10),
            child: Row(
              children: hotelList
                  .map((singleHotel) => hotelScreen(
                        hotel: singleHotel,
                      ))
                  .toList(),
            ),
          ),
          Gap(AppLayout.getHeight(10)),
        ],
      ),
    );
  }
}
