import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:new_car_tl/constants/app_font_style.dart';
import 'package:new_car_tl/constants/colors.dart';
import 'package:new_car_tl/constants/dimen.dart';
import 'package:url_launcher/url_launcher.dart';

import 'grid_view_widget.dart';

class PendingCaseWidget extends StatefulWidget {
  @override
  _PendingCaseWidgetState createState() => _PendingCaseWidgetState();
}

class _PendingCaseWidgetState extends State<PendingCaseWidget> {
  get orientation => null;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.2,
                width: MediaQuery.of(context).size.width*0.03,
                decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),topLeft: Radius.circular(12)),color: PRIMARY_COLOR),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Maruti Alto', style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR, textSize: 20.0)),
                  Text('KL - 05 - 336 ', style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),
                  Text('Aby Thomas', style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),
                  Text('Kaloor, Ernakulam', style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR)),
                  Text('NOT EVALUATED', style: AppFontStyle.bodyTextStyle(PRIMARY_COLOR),),
                  SizedBox(height: LINE_HEIGHT*0.5),
                  Row(
                    children: [
                      Text('Assigned to:  '),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: CachedNetworkImageProvider("https://www.adbasis.com/images/divita-a65623c8.jpg"),
                      ),
                      Text(' Jack Daniel'),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  child: CircleAvatar(
                    backgroundColor: PRIMARY_COLOR,
                    radius: 20,
                    child: Icon(Icons.add_ic_call_outlined, color: APP_WHITE_COLOR, size: ICON_SIZE,),
                  ),
                  onTap: _launchURL,
                ),
              )
            ],
          ),
        ],
      ),
    );;
  }

  _launchURL() async {
    const url = 'tel: +918921661155';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}
