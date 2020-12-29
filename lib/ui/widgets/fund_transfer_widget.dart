
import 'package:flutter/material.dart';
import 'package:new_car_tl/constants/app_font_style.dart';
import 'package:new_car_tl/constants/colors.dart';

class FundTransferWidgett extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Aby Thomas", style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR, textSize: 18.0)),
                Text("Txn No:  124567894", style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),
                Text("KL-03-363", style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),
              ],
            ),
            Column(
              children: [
                Text('PAID', style: AppFontStyle.titleAppBarStyle2(APP_GREEN_COLOR),),
                Text('Rs: 3.5L', style: AppFontStyle.titleAppBarStyle2(APP_BLACK_COLOR),),
              ],
            )
          ],
        ),
      ),
    );
  }
}