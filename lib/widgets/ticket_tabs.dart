import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppTicketTabs extends StatelessWidget {

  const AppTicketTabs(
      {Key? key, required this.firstTab, required this.secondTab})
      : super(key: key);
  final String firstTab;
  final String secondTab;
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: Color(0xFFF4F6FD),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Airline Ticket
            InkWell(
              onTap: (){
                print("${firstTab} tapped");
              },
              child: Container(
                width: size.width * 0.44,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "$firstTab",
                    style: Styles.textStyle.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            // Hotel
            InkWell(
              onTap: (){
                print("${secondTab} tapped");
              },
              child: Container(
                width: size.width * 0.44,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Text(
                    "$secondTab",
                    style: Styles.textStyle.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
