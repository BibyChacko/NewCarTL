import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_car_tl/constants/app_font_style.dart';
import 'package:new_car_tl/constants/colors.dart';
import 'package:new_car_tl/constants/strings.dart';
import 'package:new_car_tl/ui/widgets/rates_offered_widget.dart';

class RatesOfferedPage extends StatefulWidget {
  @override
  _RatesOfferedPageState createState() => _RatesOfferedPageState();
}

class _RatesOfferedPageState extends State<RatesOfferedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_WHITE_COLOR,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: PRIMARY_COLOR,
            )),
        backgroundColor: APP_WHITE_COLOR,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Rates Offered",
          style: AppFontStyle.appBarTittle(PRIMARY_COLOR),
        ),
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 15,
                      shrinkWrap: true,
                      itemBuilder: (context, int index){
                        return RatesOfferedWidget();
                      }
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}


