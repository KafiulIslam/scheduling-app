import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';

class CalendarShowBoxPortrait extends StatefulWidget {
  const CalendarShowBoxPortrait({
    Key? key,
  }) : super(key: key);
  // const  ShowBoxMonthlyIncomeExpense({Key? key, required this.notificationNumber}): super(key: key);
  // final int notificationNumber;

  @override
  _CalendarShowBoxPortraitState createState() => _CalendarShowBoxPortraitState();
}

class _CalendarShowBoxPortraitState extends State<CalendarShowBoxPortrait> {
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Material(
      color: Colors.transparent,
      child: Stack(children: [
        Container(
          width: width,
          height: height,
        ),
        Positioned(
            top: height * 0.10,
            child: Container(
              // height: 495,
              height: height * 0.90,
              width: width,

              decoration: const BoxDecoration(
                color: Color(0xFFD8DCE1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                // color: white,
              ),

              child: Column(
                children: [
                  SizedBox(
                    height: height * sixteenPixelRatioH,
                  ),
                  Container(height: height * fivePixelRatioH,width:  width * thirtyTwoPixelRatioW,color: deepAss,),
                  Container(
                    height: height * fiftyPixelRatioW,
                    width: width,
                    decoration: const BoxDecoration(

                      color: Color(0xFFD8DCE1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: width * sixteenPixelRatioH,
                        right: width * sixteenPixelRatioH,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // height: height * twentyFivePixelRatioW,
                            // width: width * twentyFivePixelRatioH,
                            child: const Text('Today',style: TextStyle(
                              fontSize: 18,color: red,fontWeight:FontWeight.bold,
                            ),),
                          ),
                          Container(
                            child: const FittedBox(
                              fit: BoxFit.contain,
                              child: Center(
                                child: Text(
                                  'Select a date',
                                  style: TextStyle(fontSize: 18, color: black,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                            child: Container(
                              child: const FittedBox(
                                fit: BoxFit.contain,
                                child: Center(
                                  child: Text(
                                    'done',
                                    style: TextStyle(fontSize: 18, color: red),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  ,
                  SfCalendar(
                    view: CalendarView.month,
                    firstDayOfWeek: 5,
                    cellBorderColor: dividerColor,
                    backgroundColor: lightAss,
                    headerHeight: height * twentyPixelRatioH,
                    todayHighlightColor: red,

                    // backgroundColor: red.withOpacity(0.2),

                  ),
                ],
              ),

              // height: MediaQuery.of(context).size.height,

              // color: Colors.white,
            ))
      ]),
    );

  }
}


class CalendarShowBoxLandscape extends StatefulWidget {
  const CalendarShowBoxLandscape({
    Key? key,
  }) : super(key: key);
  // const  ShowBoxMonthlyIncomeExpense({Key? key, required this.notificationNumber}): super(key: key);
  // final int notificationNumber;

  @override
  _CalendarShowBoxLandscapeState createState() => _CalendarShowBoxLandscapeState();
}

class _CalendarShowBoxLandscapeState extends State<CalendarShowBoxLandscape> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Material(
        color: Colors.transparent,
        child: Stack(children: [
          Container(
            width: width,
            height: height,
          ),

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(

              // height: 495,
              // height: height * 0.90,
              width: width,

              decoration: const BoxDecoration(
                color: Color(0xFFD8DCE1),

              ),

              child: Column(
                children: [
                  Container(height: height * fivePixelRatioW,width:  width * thirtyPixelRatioH,color: deepAss,),
                  Container(
                    height: height * fiftyPixelRatioH,
                    width: width,
                    decoration: const BoxDecoration(

                      color: Color(0xFFD8DCE1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: width * sixteenPixelRatioW,
                        right: width * sixteenPixelRatioW,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // height: height * twentyFivePixelRatioW,
                            // width: width * twentyFivePixelRatioH,
                            child: const Text('Today',style: TextStyle(
                              fontSize: 18,color: red,fontWeight:FontWeight.bold,
                            ),),
                          ),
                          Container(
                            child: const FittedBox(
                              fit: BoxFit.contain,
                              child: Center(
                                child: Text(
                                  'Select a date',
                                  style: TextStyle(fontSize: 18, color: black,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                            child: Container(
                              child: const FittedBox(
                                fit: BoxFit.contain,
                                child: Center(
                                  child: Text(
                                    'done',
                                    style: TextStyle(fontSize: 18, color: red),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  ,
                  SfCalendar(
                    view: CalendarView.month,
                    cellBorderColor: dividerColor,
                    backgroundColor: lightAss,
                    headerHeight: height * twentyPixelRatioH,
                    todayHighlightColor: red,
                    todayTextStyle: const TextStyle(color: red),

                    // backgroundColor: red.withOpacity(0.2),

                  ),
                ],
              ),

              // height: MediaQuery.of(context).size.height,

              // color: Colors.white,
            ),
          ),

        ]),
      ),
    );

  }
}