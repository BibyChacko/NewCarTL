import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/rounded_picker.dart';
import 'package:new_car_tl/constants/app_font_style.dart';
import 'package:new_car_tl/constants/colors.dart';
import 'package:new_car_tl/constants/dimen.dart';
import 'package:new_car_tl/constants/strings.dart';
import 'package:new_car_tl/ui/widgets/fund_transfer_widget.dart';

class FundTransferPage extends StatefulWidget {
  @override
  _FundTransferPageState createState() => _FundTransferPageState();
}

class _FundTransferPageState extends State<FundTransferPage> {

  DatePickerController _controller = DatePickerController();
  TextEditingController _searchController = TextEditingController();
  DateTime _selectedValue = DateTime.now();


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
          'Fund Transfers',
          style: AppFontStyle.appBarTittle(PRIMARY_COLOR),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

          Container(
          child: DatePicker(
          DateTime.now(),
          width: 60,
          height: 80,
          controller: _controller,
          initialSelectedDate: DateTime.now(),
          selectionColor: PRIMARY_COLOR,
          selectedTextColor: Colors.white,
          inactiveDates: [
            DateTime.now().add(Duration(days: 3)),
            DateTime.now().add(Duration(days: 4)),
            DateTime.now().add(Duration(days: 7))
          ],
          onDateChange: (date) {
            // New date selected
            setState(() {
              _selectedValue = date;
            });
          },
      ),
          ),
              SizedBox(height: LINE_HEIGHT,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _searchController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                      borderSide: BorderSide(color: PRIMARY_COLOR)

                    ),
                    focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: BorderSide(color: PRIMARY_COLOR),

                    ),
                    prefixIcon: Icon(Icons.search, color: PRIMARY_COLOR,),
                    hintText: 'Search by name',
                    hintStyle: AppFontStyle.bodyTextStyle2(APP_BLACK_COLOR)

                  ),

                ),
              ),
              SizedBox(height: LINE_HEIGHT,),
              ListView.builder(
                itemCount: 16,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, postion){

                    return FundTransferWidgett();
                  }
              )
            ]
    ),
        )
    )
    );
  }
}
