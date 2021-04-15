import 'package:flutter/material.dart';
import 'package:new_car_tl/constants/strings.dart';
import 'package:new_car_tl/ui/pages/confirmed_case_page.dart';

import 'package:new_car_tl/ui/pages/enquiries_page.dart';
import 'package:new_car_tl/ui/pages/evaluator_page.dart';
import 'package:new_car_tl/ui/pages/fund_transfer_page.dart';
import 'package:new_car_tl/ui/pages/home_page.dart';
import 'package:new_car_tl/ui/pages/junk_leads_page.dart';
import 'package:new_car_tl/ui/pages/pending_case_page.dart';
import 'package:new_car_tl/ui/pages/rates_offered_page.dart';
import 'package:new_car_tl/ui/pages/reassign_case_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final routes = <String, WidgetBuilder>{

    HOME_PAGE :(context)=> HomePage(),
    ENQUIRIES_PAGE :(context)=> EnquiriesPage(),
    JUNK_LEADS_PAGE : (context)=> JunkLeadsPage(),
    FUND_TRANSFER_PAGE : (context)=> FundTransferPage(),
    CONFIRMED_CASE_PAGE :(context)=> ConfirmedCasePage(),
    RATES_OFFERED_PAGE :(context)=> RatesOfferedPage(),
    EVALUATOR_PAGE: (context)=> EvaluatorPage(),
    PENDING_CASE_PAGE :(context)=> PendingCasePage(),
    REASSIGN_CASE_PAGE : (context)=> ReassignCasePage(),

  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New Car TL',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity
    ),
        routes: routes,
      initialRoute: HOME_PAGE,
    );
  }
}

