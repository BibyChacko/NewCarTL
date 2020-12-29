

import 'package:flutter/material.dart';
import 'package:new_car_tl/constants/app_font_style.dart';
import 'package:new_car_tl/constants/colors.dart';

class EnquiriesWidget extends StatelessWidget {
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
                Text('Mr. Aby Thomas', style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR, textSize: 18.0)),
                Text('Maruti Alto LXI,  2015', style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),
                Text('+91 987654321', style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),
              ],
            ),
            Text('CAR EXCHANGE', style: AppFontStyle.headingTextStyle(APP_GREEN_COLOR, textSize: 14.0) )

          ],
        ),
      ),
    );
  }
}
