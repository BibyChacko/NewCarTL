

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:new_car_tl/constants/app_font_style.dart';
import 'package:new_car_tl/constants/colors.dart';
import 'package:new_car_tl/constants/strings.dart';

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, EVALUATOR_PAGE);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: CachedNetworkImageProvider("https://www.adbasis.com/images/divita-a65623c8.jpg"),
            maxRadius: 40,
          ),
          Text("Adam", style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),)
        ],
      ),
    );
  }
}
