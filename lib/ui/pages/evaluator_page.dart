

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:new_car_tl/constants/app_font_style.dart';
import 'package:new_car_tl/constants/colors.dart';
import 'package:new_car_tl/constants/dimen.dart';
import 'package:new_car_tl/ui/widgets/confirm_junk_leads_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class EvaluatorPage extends StatefulWidget {
  @override
  _EvaluatorPageState createState() => _EvaluatorPageState();
}

class _EvaluatorPageState extends State<EvaluatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxlsScrolled){
                return<Widget>[
                  SliverAppBar(
                    expandedHeight: MediaQuery.of(context).size.height*0.5,
                    floating: false,
                    pinned: true,
                    backgroundColor: APP_WHITE_COLOR,
                    leading: IconButton(icon: Icon(Icons.clear, color: APP_BLACK_COLOR,), onPressed: (){
                      Navigator.pop(context);
                    }),
                    flexibleSpace: FlexibleSpaceBar(
                      background: CachedNetworkImage(imageUrl: "https://www.adbasis.com/images/divita-a65623c8.jpg", fit: BoxFit.cover,),
                    ),
                  )
                ];
              },
              body: Column(
                children: [
                  ListTile(
                    title: Text('Adam Smith', style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),
                    subtitle: Text('DSE', style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR),),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          child: CircleAvatar(
                            backgroundColor: PRIMARY_COLOR,
                            radius: 20,
                            child: Icon(Icons.add_ic_call_outlined, color: APP_WHITE_COLOR, size: ICON_SIZE,),
                          ),
                          onTap: _launchURL,
                        ),
                        SizedBox(width: LINE_HEIGHT),
                        CircleAvatar(
                          backgroundColor: PRIMARY_COLOR,
                          radius: 20,
                          child: Icon(Icons.message_rounded, color: APP_WHITE_COLOR, size: ICON_SIZE,),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.beenhere_outlined, color: PRIMARY_COLOR,),
                        ),
                        title: Text('Enquiries Given', style: AppFontStyle.appBarTittle(APP_BLACK_COLOR)),
                        subtitle: Text('12 Cases',style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR) ),
                        trailing: Icon(Icons.arrow_forward_ios_outlined, color: PRIMARY_COLOR, size: ICON_SIZE,),
                      ),
                      ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.hourglass_empty, color: PRIMARY_COLOR,),
                        ),
                        title: Text('Converted Cases', style: AppFontStyle.appBarTittle(APP_BLACK_COLOR)),
                        subtitle: Text('12 Cases',style: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR) ),
                        trailing: Icon(Icons.arrow_forward_ios_outlined, color: PRIMARY_COLOR, size: ICON_SIZE,),
                      ),

                    ],
                  )
                ],
              ),
            )
        )
    );
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

