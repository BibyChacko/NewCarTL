import 'package:flutter/material.dart';
import 'package:new_car_tl/constants/app_font_style.dart';
import 'package:new_car_tl/constants/colors.dart';
import 'package:new_car_tl/constants/dimen.dart';

import 'grid_view_widget.dart';

class ReassignCaseWidget extends StatefulWidget {
  @override
  _ReassignCaseWidgetState createState() => _ReassignCaseWidgetState();
}

class _ReassignCaseWidgetState extends State<ReassignCaseWidget> {
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
                  SizedBox(height: LINE_HEIGHT*0.5),
                  Row(
                    children: [
                      Text('Assigned to:  '),
                      InkWell(
                        child: CircleAvatar(
                          backgroundColor: PRIMARY_COLOR,
                          radius: 16,
                          child: Icon(Icons.person_outlined, color: APP_WHITE_COLOR,size: ICON_SIZE,),
                        ),
                        onTap: () => displayBottomSheet(context),
                      ),
                      Text('  Not Assigned'),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CircleAvatar(
                  backgroundColor: PRIMARY_COLOR,
                  radius: 16,
                  child: Icon(Icons.download_done_outlined, color: APP_WHITE_COLOR, size: ICON_SIZE,),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
  displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.5,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                ListTile(
                leading: Text('DSEs',
                style: AppFontStyle.regularTextStyle2(
                    APP_BLACK_COLOR, textSize: 20.0)),),
                  SizedBox(height: LINE_HEIGHT,),
                  Expanded(
                    child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 16,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: .8,
                            crossAxisCount: (orientation ==
                                Orientation.portrait) ? 3 : 4),
                        itemBuilder: (BuildContext context, int index) {
                          return GridViewWidget();
                        }
                    ),
                  )
                ]
            ),
          );
        }
    );
  }
  }

