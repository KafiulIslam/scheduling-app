import 'package:flutter/material.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/floating_add_page.dart';
import 'package:to_do_list/inbox_page.dart';
import 'package:to_do_list/main.dart';
import 'package:to_do_list/upcoming_page.dart';


class SearchClass extends StatefulWidget {
  const SearchClass({Key? key}) : super(key: key);

  @override
  _SearchClassState createState() => _SearchClassState();
}

class _SearchClassState extends State<SearchClass> {


  navigatorPushFromRightSide(Widget nextClass) {
    return Navigator.push(
        context,
        PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 200),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secAnimation,
                Widget child) {
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
            pageBuilder: (
                BuildContext context,
                Animation<double> animation,
                Animation<double> secAnimation,
                ) {
              return nextClass;
            }));
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
                child: Column(
                  children: [

                    Container(
                      color: red,
                      height: height * fiftyPixelRatioH,
                      width: width,
                      child: Padding(
                        padding: EdgeInsets.only(left: width * sixteenPixelRatioW,right: width * sixteenPixelRatioW),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                height: height * thirtyTwoPixelRatioH,
                                width: width * threeHundredPixelRatioW,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
                                  color: white,
                                ),
                                child:SizedBox(
                                  height: height * thirtyTwoPixelRatioH,
                                  width: width * threeHundredPixelRatioW,
                                  child: TextFormField(


                                      decoration:   InputDecoration(
                                        hintText: 'Search',
                                        hintStyle: const TextStyle(
                                          color: dividerColor,
                                          fontSize: 14,
                                        ),
                                        icon: Padding(
                                          padding: EdgeInsets.only(left: width * sixteenPixelRatioW,top: height * fivePixelRatioH),
                                          child: const Icon(Icons.search),
                                        ),
                                        border: InputBorder.none,



                                      )

                                    // initialValue:  "Search",style: hintTextStyle,

                                  ),
                                )
                            ),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  Navigator.pop(context);
                                });
                              },
                              child: Container(
                                child: const FittedBox(
                                    fit: contain,
                                    child:  Text('Cancel',style: sixteenWhiteTextStyle)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(height: height * thirtyPixelRatioH,width: width,
                    child:  Padding(
                      padding: EdgeInsets.only(left: width * sixteenPixelRatioW,right: width * sixteenPixelRatioW),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: const FittedBox(
                                fit: contain,
                                child: Text('Recent searches',style: fourteenBlackTextStyle,)),
                          ),
                          Container(
                            child: const FittedBox(
                                fit: contain,
                                child: Text('Clear',style: TextStyle(
                                  fontSize: 14,color: dividerColor,
                                ),)),
                          ),
                        ],
                      ),
                    ),
                    ),
                    Container(
                      color: lightAss,
                      height: height * thirtyPixelRatioH,width: width,

                      child:  Padding(
                        padding: EdgeInsets.only(left: width * sixteenPixelRatioW,right: width * sixteenPixelRatioW),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: IconButton(
                                onPressed: (){},
                                icon: const Icon(Icons.alarm,size: 20,color: dividerColor)
                              ),
                            ),
                            Container(
                               height: height * twentyPixelRatioH,
                              width:  width * twentyPixelRatioW,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(height: height * thirtyPixelRatioH,width: width,
                      child:  Padding(
                        padding: EdgeInsets.only(left: width * sixteenPixelRatioW,right: width * sixteenPixelRatioW),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: const FittedBox(
                                  fit: contain,
                                  child: Text('Recently viewed',style: fourteenBlackTextStyle,)),
                            ),
                            Container(
                              height:  height * twentyPixelRatioH,
                              width: width * twentyPixelRatioW,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: width * sixteenPixelRatioW,
                            left: width * sixteenPixelRatioW),
                        child: Container(
                          height: height * oneHundredEightPixelRatioH,
                          width: width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    navigatorPushFromRightSide(
                                          InboxClass(planTitleFromTextField: planTitleFromTextField.toString(),descriptionFromTextField: descriptionFromTextField.toString(),));
                                    // Navigator.push(context,MaterialPageRoute(builder: (context) => const InboxClass()));
                                  });
                                },
                                child: Container(
                                  height: height * thirtyFivePixelRatioH,
                                  width: width,
                                  decoration: BoxDecoration(
                                    color: white.withOpacity(0.3),
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    border: Border.all(
                                        color: white.withOpacity(0.1)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: height * thirtyFivePixelRatioH,
                                        width: width * ninetyPixelRatioW,
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: height *
                                                  thirtyFivePixelRatioH,
                                              width:
                                              width * twentyFivePixelRatioW,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                    Radius.circular(10)),
                                                // color:  Colors.white.withOpacity(0.2),
                                              ),
                                              child: Center(
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.inbox,
                                                    size: 20,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                                height: height *
                                                    thirtyFivePixelRatioH,
                                                width: width * sixtyPixelRatioW,
                                                child: const Center(
                                                  child: Text(
                                                    'Inbox',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      color: black,
                                                    ),
                                                  ),
                                                )),
                                          ],
                                        ),
                                      ),
                                      Container(
                                          height:
                                          height * thirtyFivePixelRatioH,
                                          width: width * thirtyFivePixelRatioW,
                                          child: const Center(
                                            child: Text(
                                              '1',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: black,
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    navigatorPushFromRightSide(
                                        const MyHomePage());
                                    // Navigator.push(context,MaterialPageRoute(builder: (context) => const MyHomePage()));

                                  });
                                },
                                child: Container(
                                  height: height * thirtyFivePixelRatioH,
                                  width: width,
                                  decoration: BoxDecoration(
                                    color: white.withOpacity(0.3),
                                    // borderRadius: const BorderRadius.only(topLeft:   Radius.circular(10),topRight: Radius.circular(10)),
                                    border: Border.all(
                                        color: white.withOpacity(0.1)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: height * thirtyFivePixelRatioH,
                                        width: width * ninetyPixelRatioW,
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: height *
                                                  thirtyFivePixelRatioH,
                                              width:
                                              width * twentyFivePixelRatioW,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                    Radius.circular(10)),
                                                // color:  Colors.white.withOpacity(0.2),
                                              ),
                                              child: Center(
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.date_range,
                                                    size: 20,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                                height: height *
                                                    thirtyFivePixelRatioH,
                                                width: width * sixtyPixelRatioW,
                                                child: const Center(
                                                  child: Text(
                                                    'Today',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      color: black,
                                                    ),
                                                  ),
                                                )),
                                          ],
                                        ),
                                      ),
                                      Container(
                                          height:
                                          height * thirtyFivePixelRatioH,
                                          width: width * thirtyFivePixelRatioW,
                                          child: const Center(
                                            child: Text(
                                              '1',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: black,
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    navigatorPushFromRightSide(
                                        const UpcomingClass());
                                    // Navigator.push(context,MaterialPageRoute(builder: (context) => const UpcomingClass()));

                                  });
                                },
                                child: Container(
                                  height: height * thirtyFivePixelRatioH,
                                  width: width,
                                  decoration: BoxDecoration(
                                    color: white.withOpacity(0.3),
                                    borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    border: Border.all(
                                        color: white.withOpacity(0.1)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // color: white.withOpacity(0.2),
                                        height: height * thirtyFivePixelRatioH,
                                        width: width * oneTwentyPixelRatioW,
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: height *
                                                  thirtyFivePixelRatioH,
                                              width:
                                              width * twentyFivePixelRatioW,
                                              decoration: const BoxDecoration(

                                                // borderRadius:   BorderRadius.only(topLeft:   Radius.circular(10) ),
                                                // color:  Colors.white.withOpacity(0.2),

                                              ),
                                              child: Center(
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.date_range,
                                                    size: 20,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                                height: height *
                                                    thirtyFivePixelRatioH,
                                                width:
                                                width * eightyPixelRatioW,
                                                child: const FittedBox(
                                                  fit: BoxFit.contain,
                                                  child: Center(
                                                    child: Text(
                                                      'Upcoming',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        color: black,
                                                      ),
                                                    ),
                                                  ),
                                                )),
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
                      ),
                    ),
                    SizedBox(height: height * sixteenPixelRatioH,),
                    GestureDetector(  //inbox details in search page. put inbox details show dialog function
                      onTap: (){},
                      child: Container(
                        height: height * ninetyFivePixelRatioH,

                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: lightAss,
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
                    ),


                  ],
                ),
              );
            } else {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        color: red,
                        height: height * fiftyPixelRatioW,
                        width: width,
                        child: Padding(
                          padding: EdgeInsets.only(left: width * sixteenPixelRatioH,right: width * sixteenPixelRatioH),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  height: height * thirtyTwoPixelRatioW,
                                  width: width * threeHundredPixelRatioH,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
                                    color: white,
                                  ),
                                  child:SizedBox(
                                    height: height * thirtyTwoPixelRatioW,
                                    width: width * threeHundredPixelRatioH,
                                    child: TextFormField(
                                        initialValue: 'Search',
                                        decoration:   InputDecoration(
                                          icon: Padding(
                                            padding: EdgeInsets.only(left: width * sixteenPixelRatioH,top: height * fivePixelRatioW),
                                            child: const Icon(Icons.search),
                                          ),

                                        )

                                      // initialValue:  "Search",style: hintTextStyle,

                                    ),
                                  )
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    Navigator.pop(context);
                                  });
                                },
                                child: Container(
                                  child: const FittedBox(
                                      fit: contain,
                                      child:  Text('Cancel',style: sixteenWhiteTextStyle)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [

                            Container(height: height * thirtyPixelRatioW,width: width,
                              child:  Padding(
                                padding: EdgeInsets.only(left: width * sixteenPixelRatioH,right: width * sixteenPixelRatioH),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: const FittedBox(
                                          fit: contain,
                                          child: Text('Recent searches',style: fourteenBlackTextStyle,)),
                                    ),
                                    Container(
                                      child: const FittedBox(
                                          fit: contain,
                                          child: Text('Clear',style: TextStyle(
                                            fontSize: 14,color: dividerColor,
                                          ),)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: lightAss,
                              height: height * thirtyPixelRatioW,width: width,

                              child:  Padding(
                                padding: EdgeInsets.only(left: width * sixteenPixelRatioH,right: width * sixteenPixelRatioH),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: IconButton(
                                          onPressed: (){},
                                          icon: const Icon(Icons.alarm,size: 20,color: dividerColor)
                                      ),
                                    ),
                                    Container(
                                      height: height * twentyPixelRatioW,
                                      width:  width * twentyPixelRatioH,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(height: height * thirtyPixelRatioW,width: width,
                              child:  Padding(
                                padding: EdgeInsets.only(left: width * sixteenPixelRatioH,right: width * sixteenPixelRatioH),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: const FittedBox(
                                          fit: contain,
                                          child: Text('Recently viewed',style: fourteenBlackTextStyle,)),
                                    ),
                                    Container(
                                      height:  height * twentyPixelRatioW,
                                      width: width * twentyPixelRatioH,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    right: width * sixteenPixelRatioH,
                                    left: width * sixteenPixelRatioH),
                                child: Container(
                                  height: height * oneHundredEightPixelRatioW,
                                  width: width,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            navigatorPushFromRightSide(
                                                  InboxClass(planTitleFromTextField: planTitleFromTextField.toString(),descriptionFromTextField: descriptionFromTextField.toString(),));
                                            // Navigator.push(context,MaterialPageRoute(builder: (context) => const InboxClass()));
                                          });
                                        },
                                        child: Container(
                                          height: height * thirtyFivePixelRatioW,
                                          width: width,
                                          decoration: BoxDecoration(
                                            color: white.withOpacity(0.3),
                                            borderRadius: const BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10)),
                                            border: Border.all(
                                                color: white.withOpacity(0.1)),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: height * thirtyFivePixelRatioW,
                                                width: width * ninetyPixelRatioH,
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      height: height *
                                                          thirtyFivePixelRatioW,
                                                      width:
                                                      width * twentyFivePixelRatioH,
                                                      decoration: const BoxDecoration(
                                                        borderRadius: BorderRadius.only(
                                                            topLeft:
                                                            Radius.circular(10)),
                                                        // color:  Colors.white.withOpacity(0.2),
                                                      ),
                                                      child: Center(
                                                        child: IconButton(
                                                          onPressed: () {},
                                                          icon: const Icon(
                                                            Icons.inbox,
                                                            size: 20,
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                        height: height *
                                                            thirtyFivePixelRatioW,
                                                        width: width * sixtyPixelRatioH,
                                                        child: const Center(
                                                          child: Text(
                                                            'Inbox',
                                                            style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                              FontWeight.bold,
                                                              color: black,
                                                            ),
                                                          ),
                                                        )),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                  height:
                                                  height * thirtyFivePixelRatioW,
                                                  width: width * thirtyFivePixelRatioH,
                                                  child: const Center(
                                                    child: Text(
                                                      '1',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        color: black,
                                                      ),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            navigatorPushFromRightSide(
                                                const MyHomePage());
                                            // Navigator.push(context,MaterialPageRoute(builder: (context) => const MyHomePage()));

                                          });
                                        },
                                        child: Container(
                                          height: height * thirtyFivePixelRatioW,
                                          width: width,
                                          decoration: BoxDecoration(
                                            color: white.withOpacity(0.3),
                                            // borderRadius: const BorderRadius.only(topLeft:   Radius.circular(10),topRight: Radius.circular(10)),
                                            border: Border.all(
                                                color: white.withOpacity(0.1)),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: height * thirtyFivePixelRatioW,
                                                width: width * ninetyPixelRatioH,
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      height: height *
                                                          thirtyFivePixelRatioW,
                                                      width:
                                                      width * twentyFivePixelRatioH,
                                                      decoration: const BoxDecoration(
                                                        borderRadius: BorderRadius.only(
                                                            topLeft:
                                                            Radius.circular(10)),
                                                        // color:  Colors.white.withOpacity(0.2),
                                                      ),
                                                      child: Center(
                                                        child: IconButton(
                                                          onPressed: () {},
                                                          icon: const Icon(
                                                            Icons.date_range,
                                                            size: 20,
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                        height: height *
                                                            thirtyFivePixelRatioW,
                                                        width: width * sixtyPixelRatioH,
                                                        child: const Center(
                                                          child: Text(
                                                            'Today',
                                                            style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                              FontWeight.bold,
                                                              color: black,
                                                            ),
                                                          ),
                                                        )),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                  height:
                                                  height * thirtyFivePixelRatioW,
                                                  width: width * thirtyFivePixelRatioH,
                                                  child: const Center(
                                                    child: Text(
                                                      '1',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        color: black,
                                                      ),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            navigatorPushFromRightSide(
                                                const UpcomingClass());
                                            // Navigator.push(context,MaterialPageRoute(builder: (context) => const UpcomingClass()));

                                          });
                                        },
                                        child: Container(
                                          height: height * thirtyFivePixelRatioW,
                                          width: width,
                                          decoration: BoxDecoration(
                                            color: white.withOpacity(0.3),
                                            borderRadius: const BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                bottomRight: Radius.circular(10)),
                                            border: Border.all(
                                                color: white.withOpacity(0.1)),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // color: white.withOpacity(0.2),
                                                height: height * thirtyFivePixelRatioW,
                                                width: width * oneTwentyPixelRatioH,
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      height: height *
                                                          thirtyFivePixelRatioW,
                                                      width:
                                                      width * twentyFivePixelRatioH,
                                                      decoration: const BoxDecoration(

                                                        // borderRadius:   BorderRadius.only(topLeft:   Radius.circular(10) ),
                                                        // color:  Colors.white.withOpacity(0.2),

                                                      ),
                                                      child: Center(
                                                        child: IconButton(
                                                          onPressed: () {},
                                                          icon: const Icon(
                                                            Icons.date_range,
                                                            size: 20,
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                        height: height *
                                                            thirtyFivePixelRatioW,
                                                        width:
                                                        width * eightyPixelRatioH,
                                                        child: const FittedBox(
                                                          fit: BoxFit.contain,
                                                          child: Center(
                                                            child: Text(
                                                              'Upcoming',
                                                              style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                FontWeight.bold,
                                                                color: black,
                                                              ),
                                                            ),
                                                          ),
                                                        )),
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
                              ),
                            ),
                            SizedBox(height: height * sixteenPixelRatioW,),
                            Container(
                              height: height * ninetyFivePixelRatioW,

                              width: width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: lightAss,
                                // border: Border.all(color: black),

                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: width * sixteenPixelRatioH),
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
                                              borderRadius: BorderRadius.circular(
                                                  100),
                                              border: Border.all(color: black),

                                            ),

                                          ),
                                          SizedBox(width: width * fivePixelRatioH,),
                                          Container(
                                            height: height * eighteenPixelRatioW,
                                            width: width * ninetyFivePixelRatioH,
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
                                      height: height * thirtyPixelRatioW,
                                      width: width,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: height * twentyPixelRatioW,
                                            width: width * twentyPixelRatioH,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(
                                                  100),

                                            ),

                                          ),
                                          SizedBox(width: width * sixteenPixelRatioH,),
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
                                      height: height * thirtyPixelRatioW,
                                      width: width,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: height * twentyPixelRatioW,
                                            width: width * twentyPixelRatioH,
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
                                                SizedBox(width: width * oneSixtyFivePixelRatioH,),
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

                          ],
                        ),
                      ),
                    ],
                  ),
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
