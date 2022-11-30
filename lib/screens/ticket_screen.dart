import 'package:book_ticket/screens/ticket_view.dart';
import 'package:book_ticket/utils/app_info_list.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:book_ticket/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:barcode_widget/barcode_widget.dart';
import '../utils/app_layout.dart';
import '../widgets/column_layout.dart';
import '../widgets/layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20),
            ),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets",
                  style: Styles.headLineStyle1.copyWith(fontSize: 35)),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticketDetails[0],
                    isTicketScreen: true, isColor: true),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(16),
                    vertical: AppLayout.getHeight(20)),
                margin: EdgeInsets.only(left: 15.5, right: 16.5),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // The code below is replaced by reusable widget AppColumnLayout()
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     Text("Flutter DB",style: Styles.headLineStyle3.copyWith(color: Colors.black),),
                        //     Gap(AppLayout.getHeight(5)),
                        //     Text("Passenger",style: Styles.headLineStyle3.copyWith(color: Colors.black),),
                        //   ],
                        // ),
                        AppColumnLayout(
                          firstText: "Flutter DB",
                          secondText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnLayout(
                          firstText: "5221 478566",
                          secondText: "Passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    // Container(
                    //   color: Colors.white, //Color(0xFFFB7367),
                    //   child: Expanded(
                    //     child: Padding(
                    //       padding: EdgeInsets.symmetric(
                    //           vertical: AppLayout.getHeight((12))),
                    //       child: AppLayoutBuilderWidget(isColor: true),
                    //     ),
                    //   ),
                    // ),
                    Gap(AppLayout.getHeight(15)),
                    const AppLayoutBuilderWidget(isColor: true),
                    Gap(AppLayout.getHeight(15)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // The code below is replaced by reusable widget AppColumnLayout()
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     Text("Flutter DB",style: Styles.headLineStyle3.copyWith(color: Colors.black),),
                        //     Gap(AppLayout.getHeight(5)),
                        //     Text("Passenger",style: Styles.headLineStyle3.copyWith(color: Colors.black),),
                        //   ],
                        // ),
                        AppColumnLayout(
                          firstText: "364738 28274478",
                          secondText: "Number of E-Ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnLayout(
                          firstText: "B2SG28",
                          secondText: "Booking Code",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(15)),
                    const AppLayoutBuilderWidget(isColor: true),
                    Gap(AppLayout.getHeight(15)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // The code below is replaced by reusable widget AppColumnLayout()
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     Text("Flutter DB",style: Styles.headLineStyle3.copyWith(color: Colors.black),),
                        //     Gap(AppLayout.getHeight(5)),
                        //     Text("Passenger",style: Styles.headLineStyle3.copyWith(color: Colors.black),),
                        //   ],
                        // ),
                        AppColumnLayout(
                          firstText: "**2546",
                          secondText: "Payment Method",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                          img: "ticket_app_assets/assets/images/visa.png",
                          scale: 11,
                        ),
                        AppColumnLayout(
                          firstText: "\$249.99",
                          secondText: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 1,
              // ),
              // Container(
              //   margin: EdgeInsets.symmetric(
              //     horizontal: AppLayout.getWidth(16.5),
              //   ),
              //   width: size.width * 0.85,
              //   height: AppLayout.getHeight(100),
              //   padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20),horizontal: AppLayout.getWidth(10),),
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15),),
              //   ),
              //   child: Container(
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(15),
              //       image: DecorationImage(
              //         fit: BoxFit.contain,
              //         image: AssetImage(
              //           "ticket_app_assets/assets/images/ticket_barcode.jpg",
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 1,
              ),
              Container(
                // color: Colors.blue,
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15.5)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21),
                  ),
                ),
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      data: 'https://github.com/martinovovo',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Colors.black,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticketDetails[0]),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getWidth(22),top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2,),
              ),
              child: CircleAvatar(maxRadius: 4,backgroundColor: Styles.textColor,),
            ),
          ),
          Positioned(
            right: AppLayout.getWidth(22),top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2,),
              ),
              child: CircleAvatar(maxRadius: 4,backgroundColor: Styles.textColor,),
            ),
          ),
        ],
      ),
    );
  }
}
