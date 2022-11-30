import 'dart:math';

import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:book_ticket/widgets/thick_container.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../widgets/column_layout.dart';
import '../widgets/layout_builder_widget.dart';

// @immutable
class TicketView extends StatelessWidget {
  // const TicketView({Key? key, required this.details,}) : super(key: key);
  final Map<String, dynamic> details;
  final bool? isColor;
  final bool? isTicketScreen;
  TicketView(this.details, {super.key, this.isColor, this.isTicketScreen});
  // final List<String> ls = [(details["From"][0] as String),(details["From"][0] as String),],

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: min(380,(size.width * 0.85)),
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? AppLayout.getHeight(185) : AppLayout.getHeight(200)),
      child: Container(
        margin: EdgeInsets.only(
          right: AppLayout.getHeight(16),
          // bottom: AppLayout.getWidth(20),
        ),
        child: Column(
          children: [
            /*
              Showing the blue part of the ticket
            */
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              padding: EdgeInsets.only(
                top: AppLayout.getHeight(16),
                bottom: AppLayout.getHeight(16),
                left: AppLayout.getHeight(16),
                right: AppLayout.getHeight(16),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        (details["From"]! as String),
                        style: (isColor == null)
                            ? Styles.headLineStyle3.copyWith(
                                color: Colors.white,
                              )
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      ),
                      const Spacer(),
                      (isColor == null)
                          ? ThickContainer()
                          : ThickContainer(col: true),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  if (kDebugMode) {
                                    print(
                                        "The width is ${constraints.constrainWidth()}");
                                  }
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: isColor == null
                                                ? Colors.white
                                                : Color(0xFF8accf7),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : Color(0xFF8accf7),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      (isColor == null)
                          ? ThickContainer()
                          : ThickContainer(col: true),
                      const Spacer(),
                      Text(
                        (details["To"]! as String),
                        style: (isColor == null)
                            ? Styles.headLineStyle3.copyWith(
                                color: Colors.white,
                              )
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          (details["full1"]! as String),
                          style: (isColor == null)
                              ? Styles.headLineStyle4.copyWith(
                                  color: Colors.white,
                                )
                              : Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        (details["Duration"]! as String),
                        style: (isColor == null)
                            ? Styles.headLineStyle3.copyWith(
                                color: Colors.white,
                              )
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          (details["Full2"]! as String),
                          textAlign: TextAlign.end,
                          style: (isColor == null)
                              ? Styles.headLineStyle3.copyWith(
                                  color: Colors.white,
                                )
                              : Styles.headLineStyle3,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*
            Showing the orange part of the ticket
            */
            Container(
              color: isColor == null
                  ? Styles.orangeColor
                  : Colors.white, //Color(0xFFFB7367),
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(10)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: AppLayoutBuilderWidget(isColor: isColor),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(10)),
                          bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /*
            Bottom part of the ticket
            */
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: (isTicketScreen == null)
                    ? BorderRadius.only(
                        bottomRight: Radius.circular(AppLayout.getHeight(20)),
                        bottomLeft: Radius.circular(AppLayout.getHeight(20)),
                      )
                    : BorderRadius.circular(0),
              ),
              padding: EdgeInsets.only(
                top: AppLayout.getHeight(10),
                bottom: AppLayout.getHeight(16),
                left: AppLayout.getHeight(16),
                right: AppLayout.getHeight(16),
              ),
              // child: Column(
              //   mainAxisSize: MainAxisSize.max,
              //   children: [
              //     Stack(
              //       children: [
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             SizedBox(
              //               // width: 0,
              //               child: Text(
              //                 (details["Date"]! as String),
              //                 style: Styles.headLineStyle3.copyWith(
              //                   color: Colors.white,
              //                 ),
              //               ),
              //             ),
              //             SizedBox(
              //               // width: 0,
              //               child: Text(
              //                 (details["Number"]! as String),
              //                 style: Styles.headLineStyle3.copyWith(
              //                   color: Colors.white,
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //         Center(
              //           child: Text(
              //             (details["Departure"]! as String),
              //             style: Styles.headLineStyle3.copyWith(
              //               color: Colors.white,
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //     Gap(3),
              //     Stack(
              //       children: [
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             SizedBox(
              //               child: Text(
              //                 "Date",
              //                 style: Styles.headLineStyle3.copyWith(
              //                   color: Colors.white,
              //                 ),
              //               ),
              //             ),
              //             SizedBox(
              //               child: Text(
              //                 "Number",
              //                 style: Styles.headLineStyle3
              //                     .copyWith(color: Colors.white),
              //               ),
              //             ),
              //           ],
              //         ),
              //         Center(
              //           child: Text(
              //             "Departure Time",
              //             style: Styles.headLineStyle3
              //                 .copyWith(color: Colors.white),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayout(firstText: details["Date"],
                    secondText: "Date",alignment:
                    CrossAxisAlignment.start,isColor: (isColor==null)? null:false),
                  // Column(
                  //   children: [
                  //     Text(
                  //       (details["Date"] as String),
                  //       style: (isColor==null) ? Styles.headLineStyle3.copyWith(
                  //         color: Colors.white,
                  //       ) : Styles.headLineStyle3.copyWith(color: Colors.black),
                  //     ),
                  //     Text(
                  //       "Date",
                  //       style: (isColor==null) ? Styles.headLineStyle3.copyWith(
                  //         color: Colors.white,
                  //       ) : Styles.headLineStyle3,
                  //     ),
                  //   ],
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  // ),
                  AppColumnLayout(firstText: details["Departure"],
                    secondText: "Departure time",alignment:
                    CrossAxisAlignment.center,isColor: (isColor==null)? null:false),
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       (details["Departure"] as String),
                  //       style: (isColor==null) ? Styles.headLineStyle3.copyWith(
                  //         color: Colors.white,
                  //       ) : Styles.headLineStyle3.copyWith(color: Colors.black),
                  //     ),
                  //     Text(
                  //       "Date",
                  //       style: (isColor==null) ? Styles.headLineStyle3.copyWith(
                  //         color: Colors.white,
                  //       ) : Styles.headLineStyle3,
                  //     ),
                  //   ],
                  // ),
                  AppColumnLayout(firstText: "${details["Number"]}",
                    secondText: "Number",alignment:
                    CrossAxisAlignment.end,isColor: (isColor==null)? null:false),
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.end,
                  //   children: [
                  //     Text(
                  //       "${details["Number"]}",
                  //       style: (isColor==null) ? Styles.headLineStyle3.copyWith(
                  //         color: Colors.white,
                  //       ) : Styles.headLineStyle3.copyWith(color: Colors.black),
                  //     ),
                  //     Text(
                  //       "Number",
                  //       style: (isColor==null) ? Styles.headLineStyle3.copyWith(
                  //         color: Colors.white,
                  //       ) : Styles.headLineStyle3,
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
