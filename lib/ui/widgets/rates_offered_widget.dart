import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_car_tl/constants/app_font_style.dart';
import 'package:new_car_tl/constants/colors.dart';
import 'package:new_car_tl/constants/dimen.dart';

class RatesOfferedWidget extends StatelessWidget {
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
                Text('Maruti Alto', style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR, textSize: 18.0)),
                Text('LXI,  2015', style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),
                Text('1000KMS, Petrol', style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),
              ],
            ),
            Column(
              children: [
                Text('Rs:  3.5 L', style: AppFontStyle.titleAppBarStyle2(PRIMARY_COLOR)),
                Text('Demanded: Rs. 4L', style: AppFontStyle.bodyTextStyle(APP_BLACK_COLOR, textSize: 10.0))
              ],
            ),
            CircleAvatar(
              backgroundColor: PRIMARY_COLOR,
              radius: 16,
              child: Icon(Icons.keyboard_arrow_right, color: APP_WHITE_COLOR,),

            )
          ],
        ),
      ),
    );
  }
}