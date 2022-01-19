import 'package:flutter/material.dart';
import 'package:to_do_list/common/common_classes.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/calendar_show_box.dart';

import 'package:to_do_list/common/number_ratio.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/floating_add_page.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/menu_box_show_dialog.dart';

class UpcomingClass extends StatefulWidget {
  const UpcomingClass({Key? key}) : super(key: key);

  @override
  State<UpcomingClass> createState() => _UpcomingClassState();
}

class _UpcomingClassState extends State<UpcomingClass> {


  calendarAlertDialog(BuildContext context) {
    return showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 200),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return OrientationBuilder(builder: (_, orientation)
        {
          if (orientation == Orientation.portrait) {
            return const Align(
              alignment: Alignment.bottomCenter,
              child: CalendarShowBoxPortrait(),
            );
          } else {
            return const Align(
              alignment: Alignment.bottomCenter,
              child: CalendarShowBoxLandscape(),
            );
          }
        }
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(anim1),
          child: child,
        );
      },
    );
  }


  floatingAddAlertDialog(BuildContext context) {
    return showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 200),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return OrientationBuilder(builder: (_, orientation)
        {
          if (orientation == Orientation.portrait) {
            return const Align(
              alignment: Alignment.bottomCenter,
              child: FloatingAddShowDialog(),
            );
          } else {
            return const Align(
              alignment: Alignment.bottomCenter,
              child: FloatingAddShowDialog(),
            );
          }
        }
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(anim1),
          child: child,
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFFD8DCE1),
      body: OrientationBuilder(builder: (_, orientation) {
        if (orientation == Orientation.portrait) {
          return Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const AppBarWithIconTitleTwoIconPortrait(title: 'Upcoming', ),

                     Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Container(
                            height: height * thirtyFivePixelRatioH,
                            width: width,
                            child: Padding(
                              padding:   EdgeInsets.only(left: width * sixteenPixelRatioW,right:  width * sixteenPixelRatioW ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // color: red.withOpacity(0.2),
                                    //   height: height * thirtyPixelRatioH,
                                    //   width: width * twoHundredPixelRatioW,
                                      child: FittedBox(
                                        fit: BoxFit.contain,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                         Container(
                                           child: Row(
                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             crossAxisAlignment: CrossAxisAlignment.center,
                                             children: [
                                             Container(
                                                  child: const FittedBox(
                                                   fit: BoxFit.contain,
                                                   child:  Text(
                                                     'Nov 2021',
                                                     style: TextStyle(
                                                         fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
                                                   ),
                                                 )),
                                             Container(

                                                 child: FittedBox(
                                                   fit: BoxFit.contain,
                                                   child: IconButton(
                                                       onPressed: () {
                                                         setState(() {
                                                           calendarAlertDialog(context);
                                                         });
                                                       },
                                                       icon: const Icon(
                                                         Icons.arrow_drop_down,
                                                         size: 30,
                                                         color: ass,
                                                       )),
                                                 )),
                                           ],),
                                         ),

                                          ],
                                        ),
                                      )),
                                  Container(
                                     child: const Text(
                                      'Today',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: height * sixtyPixelRatioH,
                            width: width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:   EdgeInsets.only(left: width * sixteenPixelRatioW,right:   width * sixteenPixelRatioW,),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                    SingleLetterClass(letter: 'F'),
                                      SingleLetterClass(letter: 'S'),
                                      SingleLetterClass(letter: 'S'),
                                      SingleLetterClass(letter: 'M'),
                                      SingleLetterClass(letter: 'T'),
                                      SingleLetterClass(letter: 'W'),SingleLetterClass(letter: 'T'),

                                    ]
                                  ),
                                ),
                                Padding(
                                  padding:   EdgeInsets.only(left: width * sixteenPixelRatioW,right:   width * sixteenPixelRatioW),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      SingleLetterClass(letter: '12'),
                                      SingleLetterClass(letter: '13'),
                                      SingleLetterClass(letter: '14'),
                                      SingleLetterClass(letter: '15'),
                                      SingleLetterClass(letter: '16'),
                                      SingleLetterClass(letter: '17'),SingleLetterClass(letter: '18'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            height: 1,
                            color: dividerColor,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              // border: Border.all(color: black.withOpacity(0.1))
                            ),
                            height: height * thirtyFivePixelRatioH,
                            width: width,
                            child: Padding(
                              padding:   EdgeInsets.only(
                                  left: width * sixteenPixelRatioW, right: width * sixteenPixelRatioW),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // height: 20,
                                    // width: 70,
                                    child: const FittedBox(
                                      fit: BoxFit.contain,
                                      child: Center(
                                        child: Text(
                                          'Overdue',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // height: 20,
                                    // width: 90,
                                    child: const FittedBox(
                                      fit: BoxFit.contain,

                                      child: Center(
                                        child: Text(
                                          'Reschedule', style: TextStyle(
                                          fontSize: 16,
                                          color: red,
                                        ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Divider(
                            height: 1,
                            color: dividerColor,
                          ),
                          SizedBox(height: height  * eightPixelRatioH,),
                          Container(
                            height: height * ninetyFivePixelRatioH,

                            width: width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              // border: Border.all(color: black),

                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: width * sixteenPixelRatioW),
                              child: Column(
                                children: [
                                  Container(
                                    height: height * thirtyPixelRatioH,
                                    width: width,
                                    child: Row(

                                      children: [
                                        Container(
                                          height: height * twentyPixelRatioH,
                                          width: width * twentyPixelRatioW,

                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                100),
                                            border: Border.all(color: black),

                                          ),

                                        ),
                                        SizedBox(width: width * fivePixelRatioW,),
                                        Container(
                                          height: height * eighteenPixelRatioH,
                                          width: width * ninetyFivePixelRatioW,
                                          child: const FittedBox(
                                            fit: BoxFit.contain,
                                            child: Text(
                                              'Ban vs Ind', style: TextStyle(
                                              fontSize: 16, color: black,),
                                              textAlign: TextAlign.start,

                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: height * thirtyPixelRatioH,
                                    width: width,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: height * twentyPixelRatioH,
                                          width: width * twentyPixelRatioW,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                100),

                                          ),

                                        ),
                                        SizedBox(width: width * sixteenPixelRatioW,),
                                        Container(
                                          // height: 16,
                                          // width: 70,
                                          child: const FittedBox(
                                            fit: BoxFit.contain,
                                            child: Text(
                                              '1st T20 in world cup',
                                              style: sixteenAssTextStyle,
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: height * thirtyPixelRatioH,
                                    width: width,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: height * twentyPixelRatioH,
                                          width: width * twentyPixelRatioW,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                100),

                                          ),

                                        ),

                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment
                                                .spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment
                                                .center,
                                            children: [
                                              Container(
                                                  child: Row(
                                                    children: [
                                                      IconButton(onPressed: () {},
                                                          icon: const Icon(
                                                            Icons.date_range,
                                                            color: red,
                                                            size: 16,)),
                                                      Container(

                                                        child: const FittedBox(
                                                            fit: contain,
                                                            child: Text('26, oct',
                                                              style: TextStyle(fontSize: 16,color: red,
                                                              ),)),
                                                      )
                                                    ],
                                                  )
                                              ),
                                              SizedBox(width: width * oneSixtyFivePixelRatioW,),
                                              Container(

                                                child: Row(
                                                  children: [
                                                    Container(

                                                        child: const FittedBox(
                                                            fit: contain,
                                                            child: Text('Inbox',
                                                                style: sixteenAssTextStyle))),
                                                    IconButton(onPressed: () {},
                                                        icon: const Icon(
                                                          Icons.inbox, color: Colors.blue,
                                                          size: 16,)),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: height ,
                            width: width,
                            child: Column(
                              children: [
                                Container(height: height * fiftyPixelRatioH,width: width,
                                  decoration: const BoxDecoration(
                                      border: Border(
                                        top: BorderSide(width: 1.0, color: dividerColor),
                                        bottom: BorderSide(width: 1.0, color: dividerColor),
                                      )
                                  ),
                                  child: Padding(
                                    padding:   EdgeInsets.only(top: height * twentyPixelRatioH,left:height * eightPixelRatioW ),
                                    child: Container(
                                      child: const Text(
                                        '18 Nov - Today - Thursday',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 18,color: ass,fontWeight: FontWeight.bold),

                                      ),
                                    ),
                                  ),
                                ),
                               const DateClass(dateNumber: '19', month: 'Nov', day: 'Friday'),
                               const DateClass(dateNumber: '20', month: 'Nov', day: 'Saturday'),
                               const DateClass(dateNumber: '21', month: 'Nov', day: 'Sunday'),
                               const DateClass(dateNumber: '22', month: 'Nov', day: 'Monday'),
                               const DateClass(dateNumber: '23', month: 'Nov', day: 'Tuesday'),
                               const DateClass(dateNumber: '24', month: 'Nov', day: 'Wednesday'),
                               const DateClass(dateNumber: '25', month: 'Nov', day: 'Thursday'),
                               const DateClass(dateNumber: '26', month: 'Nov', day: 'Friday'),
                               const DateClass(dateNumber: '27', month: 'Nov', day: 'Saturday'),
                              ],
                            ),
                          ),



                          // Divider(height: 1,color: black.withOpacity(0.5),),
                        ],
                      ),
                    ),

                ],
              ),
            ),
          );
        } else {
          return Container(
            child: Column(
              children: [
                const AppBarWithIconTitleTwoIconLandscape(title: 'Inbox'),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      // SizedBox(height: height* sixteenPixelRatioW,),

                      SizedBox(
                        height: height * sixteenPixelRatioW,
                      ),
                      Container(
                        height: height *
                            hundredPixelRatioW, //0.2380952380952381,// 100 pixel

                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          // border: Border.all(color: white),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: width * sixteenPixelRatioH),
                          child: Column(
                            children: [
                              Container(
                                height: height * thirtyPixelRatioW,
                                width: width,
                                child: Row(
                                  children: [
                                    Container(
                                      height: height * twentyPixelRatioW,
                                      width: width * twentyPixelRatioH,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        border: Border.all(color: black),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * fivePixelRatioH,
                                    ),
                                    Container(
                                      height: height * eighteenPixelRatioW,
                                      width: width * ninetyFivePixelRatioH,
                                      child: const FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          'Ban vs Ind',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: black,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: height * thirtyPixelRatioW,
                                width: width,
                                child: Row(
                                  children: [
                                    Container(
                                      height: height * twentyPixelRatioW,
                                      width: width * twentyPixelRatioH,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * sixteenPixelRatioH,
                                    ),
                                    Container(
                                      // height: 16,
                                      // width: 70,
                                      child: const FittedBox(
                                        fit: BoxFit.contain,
                                        child: Text(
                                          '1st T20 in world cup',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: ass,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: height * thirtyPixelRatioW,
                                width: width,
                                child: Row(
                                  children: [
                                    Container(
                                      height: height * twentyPixelRatioW,
                                      width: width * twentyPixelRatioH,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                              child: Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.date_range,
                                                    color: red,
                                                    size: 16,
                                                  )),
                                              Container(
                                                child: const FittedBox(
                                                    fit: contain,
                                                    child: Text(
                                                      '26, oct',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: red),
                                                    )),
                                              )
                                            ],
                                          )),
                                          SizedBox(
                                            width: width * 0.6060606060606061,
                                          ),
                                          Container(),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      } // This trailing comma makes auto-formatting nicer for build methods.
          ),
      floatingActionButton: FloatingActionButton(
          elevation: 1.0,
          child: const Icon(
            Icons.add,
            size: 35,
            color: white,
          ),
          backgroundColor: red,
          onPressed: () {
setState(() {
  floatingAddAlertDialog(context);
});
          }),
    ));
  }
}
