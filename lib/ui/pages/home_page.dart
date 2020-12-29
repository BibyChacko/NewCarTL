import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:new_car_tl/constants/app_font_style.dart';
import 'package:new_car_tl/constants/colors.dart';
import 'package:new_car_tl/constants/dimen.dart';
import 'package:new_car_tl/constants/strings.dart';

import '../widgets/grid_view_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.grain, color: APP_BLACK_COLOR),
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          ListTile(
                            leading: Icon(Icons.beenhere_outlined,
                                color: PRIMARY_COLOR),
                            title: Text(
                              EVALUATED_CASES,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: PRIMARY_COLOR,
                            ),

                          ),
                          ListTile(
                            leading: Icon(Icons.hourglass_empty_outlined,
                                color: PRIMARY_COLOR),
                            title: Text(
                              PENDING_CASES,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: PRIMARY_COLOR,
                            ),
                            onTap: (){
                              Navigator.pushNamed(context, PENDING_CASE_PAGE);
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.assignment_outlined,
                                color: PRIMARY_COLOR),
                            title: Text(
                              EVALUATION_NOT_DONE,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: PRIMARY_COLOR,
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.assignment_outlined,
                                color: PRIMARY_COLOR),
                            title: Text(
                              JUNK_LEADS,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: PRIMARY_COLOR,
                            ),
                            onTap: (){
                              Navigator.pushNamed(context, JUNK_LEADS_PAGE);
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.assignment_outlined,
                                color: PRIMARY_COLOR),
                            title: Text(
                              SOURCED_VEHICLE,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: PRIMARY_COLOR,
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.assignment_outlined,
                                color: PRIMARY_COLOR),
                            title: Text(
                              FUND_TRANSFERS,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: PRIMARY_COLOR,
                            ),
                            onTap: (){
                              Navigator.pushNamed(context, FUND_TRANSFER_PAGE);
                            },

                          ),
                        ],
                      ),
                    ),

                  ]),
            ),
          );
        });
  }



  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
        backgroundColor: APP_WHITE_COLOR,
        appBar: AppBar(
          backgroundColor: APP_WHITE_COLOR,
          elevation: 0,
          centerTitle: true,
          title: Text(
            EVALUATOR_APP,
            style: AppFontStyle.appBarTittle(PRIMARY_COLOR),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert_outlined,
                  color: PRIMARY_COLOR,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Container(
                    decoration: BoxDecoration(
                        color: PRIMARY_COLOR,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(12),
                            topRight: Radius.circular(12))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 8, right: 20),
                      child: Text(
                        NEW_CAR_TL,
                        style: AppFontStyle.regularSmallTextStyle(APP_WHITE_COLOR,
                            textSize: 16.0),
                      ),
                    ),
                  )),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider(
                          "https://www.adbasis.com/images/divita-a65623c8.jpg"),
                      maxRadius: 60,
                    ),
                    SizedBox(
                      height: LINE_HEIGHT,
                    ),
                    Text("John Lee",
                        style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR,
                            textSize: 22.0)),
                    Text(
                      "@98xxxxxx",
                      style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR),
                    ),
                    Text(
                      "Kaloor",
                      style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR),
                    ),
                    SizedBox(height: LINE_HEIGHT * 2),
                    ListTile(
                        leading: Text(
                          YOUR_TEAM,
                          style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR,
                              textSize: 20.0),
                        )),
                    GridView.builder(
                        shrinkWrap: true,
                        itemCount: 16,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:
                            (orientation == Orientation.portrait) ? 3 : 4),
                        itemBuilder: (BuildContext context, int index) {
                          return GridViewWidget();
                        }),
                    SizedBox(height: LINE_HEIGHT * 3),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () => displayBottomSheet(context),
          backgroundColor: PRIMARY_COLOR,
          child: Icon(
            Icons.grain,
            color: APP_WHITE_COLOR,
          ),
        ),


    );
  }
}
