import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/common/common_classes.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';

class SettingShowBoxPortrait extends StatefulWidget {
  const SettingShowBoxPortrait({
    Key? key,
  }) : super(key: key);
  // const  ShowBoxMonthlyIncomeExpense({Key? key, required this.notificationNumber}): super(key: key);
  // final int notificationNumber;

  @override
  _SettingShowBoxPortraitState createState() => _SettingShowBoxPortraitState();
}

class _SettingShowBoxPortraitState extends State<SettingShowBoxPortrait> {
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
                color: deepAss,

              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: height * fiftyPixelRatioH,
                    width: width,
                    color: const Color(0xFFD8DCE1),

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
                            height: height * twentyFivePixelRatioH,
                            width: width * twentyFivePixelRatioW,
                          ),
                          Container(
                            child: const FittedBox(
                              fit: BoxFit.contain,
                              child: Center(
                                child: Text(
                                  'Settings',
                                  style: TextStyle(fontSize: 18, color: black),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                Navigator.of(context).pop();
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
                  ),

                  SizedBox(
                    height: height * sixteenPixelRatioH,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioW,
                        left: width * sixteenPixelRatioW),
                    child: Container(
                      height: height * sixtyPixelRatioH,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFFD8DCE1),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: width * twoPixelRatioW,
                            left: width * twoPixelRatioW),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: height * thirtyFivePixelRatioH,
                              width: width * thirtyFivePixelRatioW,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                // color: lightAss,
                              ),
                              child: Center(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.star,
                                        size: 25,
                                        color: red,
                                      ))),
                            ),
                            Container(
                              height: height * fortyPixelRatioH,
                              width: width * twoHundredPixelRatioW,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                // color:  const Color(0xFFD8DCE1) ,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: const FittedBox(
                                            fit: BoxFit.contain,
                                            child: Center(
                                                child: Text(
                                                  'To Do List Pro',
                                                  textAlign: TextAlign.start,
                                                  style: sixteenAssTextStyle,
                                                ))),
                                      ),
                                      Container(
                                        child: const FittedBox(
                                            fit: BoxFit.contain,
                                            child: Center(
                                                child: Text(
                                                  'Upgrade for more projects and reminders',
                                                  textAlign: TextAlign.start,
                                                  style: tenAssTextStyle,
                                                ))),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: height * fortyPixelRatioH,
                                    width: width * twoPixelRatioW,
                                  )

                                ],
                              ),
                            ),
                            SizedBox(width: width * seventyPixelRatioW,),
                            Container(
                                child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.arrow_forward_ios,
                                          size: 20,
                                          color: ass,
                                        ))))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * sixteenPixelRatioH,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioW,
                        left: width * sixteenPixelRatioW),
                    child: Container(
                      height: height * oneEightyFivePixelRatioH,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFFD8DCE1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const IconTitleIconPortraitClass(
                            icon: Icons.person,
                            title: 'Account',
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: width * fiftyPixelRatioW),
                            child: const Divider(
                              height: 1,
                              color: ass,
                            ),
                          ),
                          const IconTitleIconPortraitClass(
                            icon: Icons.settings,
                            title: 'General',
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: width * fiftyPixelRatioW),
                            child: const Divider(
                              height: 1,
                              color: ass,
                            ),
                          ),
                          const IconTitleIconPortraitClass(
                            icon: Icons.star,
                            title: 'Theme',
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: width * fiftyPixelRatioW),
                            child: const Divider(
                              height: 1,
                              color: ass,
                            ),
                          ),
                          const IconTitleIconPortraitClass(
                            icon: Icons.star,
                            title: 'AppIcon',
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: width * fiftyPixelRatioW),
                            child: const Divider(
                              height: 1,
                              color: ass,
                            ),
                          ),
                          const IconTitleIconPortraitClass(
                            icon: Icons.star,
                            title: 'Productivity',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * sixteenPixelRatioH,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * sixteenPixelRatioW,
                      right: width * sixteenPixelRatioW,
                    ),
                    child: const IconTitleIconPortraitClass(
                      icon: Icons.notifications,
                      title: 'Notifications',
                    ),
                  ),
                  SizedBox(
                    height: height * sixteenPixelRatioH,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * sixteenPixelRatioW,
                      right: width * sixteenPixelRatioW,
                    ),
                    child: const IconTitleIconPortraitClass(
                      icon: Icons.star,
                      title: 'Siri',
                    ),
                  ),
                  SizedBox(
                    height: height * sixteenPixelRatioH,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioW,
                        left: width * sixteenPixelRatioW),
                    child: Container(
                      height: height * oneSixtyFivePixelRatioH,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFFD8DCE1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const IconTitleIconPortraitClass(
                            icon: Icons.settings,
                            title: 'Help and Feedback',
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: width * fiftyPixelRatioW),
                            child: const Divider(
                              height: 1,
                              color: ass,
                            ),
                          ),
                          const IconTitleIconPortraitClass(
                            icon: Icons.star,
                            title: 'About',
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: width * fiftyPixelRatioW),
                            child: const Divider(
                              height: 1,
                              color: ass,
                            ),
                          ),
                          const IconTitleIconPortraitClass(
                            icon: Icons.star,
                            title: "What's new",
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: width * fiftyPixelRatioW),
                            child: const Divider(
                              height: 1,
                              color: ass,
                            ),
                          ),
                          const IconTitleIconPortraitClass(
                            icon: Icons.star,
                            title: "Sync",
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * sixteenPixelRatioH,
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                        left: width * sixteenPixelRatioW,
                        right: width * sixteenPixelRatioW,
                      ),
                      child: Container(
                        height: height * thirtyFivePixelRatioH,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFFD8DCE1),
                        ),
                        child: const Center(
                            child: Text(
                          "Log Out",
                          style: TextStyle(fontSize: 22, color: red),
                        )),
                      )),
                  SizedBox(
                    height: height * sevenPixelRatioH,
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                        left: width * sixteenPixelRatioW,
                        right: width * sixteenPixelRatioW,
                      ),
                      child: Container(
                        height: height * twentyPixelRatioH,
                        width: width,
                        child: const Center(
                            child: Text(
                          "Logged In as : kafiulislam@gmail.com",
                          style: TextStyle(fontSize: 12, color: black),
                        )),
                      )),
                  SizedBox(
                    height: height * thirtyTwoPixelRatioH,
                  ),
                ],
              ),

              // height: MediaQuery.of(context).size.height,

              // color: Colors.white,
            ),
          )
        ]),
      ),
    );
  }
}



class SettingShowBoxLandscape extends StatefulWidget {
  const SettingShowBoxLandscape({
    Key? key,
  }) : super(key: key);
  // const  ShowBoxMonthlyIncomeExpense({Key? key, required this.notificationNumber}): super(key: key);
  // final int notificationNumber;

  @override
  _SettingShowBoxLandscapeState createState() => _SettingShowBoxLandscapeState();
}

class _SettingShowBoxLandscapeState extends State<SettingShowBoxLandscape> {
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
                color: deepAss,

              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                            height: height * twentyFivePixelRatioW,
                            width: width * twentyFivePixelRatioH,
                          ),
                          Container(
                            child: const FittedBox(
                              fit: BoxFit.contain,
                              child: Center(
                                child: Text(
                                  'Settings',
                                  style: TextStyle(fontSize: 18, color: black),
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
                  ),

                  SizedBox(
                    height: height * sixteenPixelRatioW,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioH,
                        left: width * sixteenPixelRatioH),
                    child: Container(
                      height: height * sixtyPixelRatioW,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFFD8DCE1),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: width * twoPixelRatioH,
                            left: width * twoPixelRatioH),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: height * thirtyFivePixelRatioW,
                              width: width * thirtyFivePixelRatioH,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                // color: lightAss,
                              ),
                              child: Center(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.star,
                                        size: 25,
                                        color: red,
                                      ))),
                            ),
                            Container(
                              height: height * fortyPixelRatioW,
                              width: width * twoHundredPixelRatioH,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                // color:  const Color(0xFFD8DCE1) ,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: const FittedBox(
                                            fit: BoxFit.contain,
                                            child: Center(
                                                child: Text(
                                                  'To Do List Pro',
                                                  textAlign: TextAlign.start,
                                                  style: sixteenAssTextStyle,
                                                ))),
                                      ),
                                      Container(
                                        child: const FittedBox(
                                            fit: BoxFit.contain,
                                            child: Center(
                                                child: Text(
                                                  'Upgrade for more projects and reminders',
                                                  textAlign: TextAlign.start,
                                                  style: tenAssTextStyle,
                                                ))),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: height * fortyPixelRatioW,
                                    width: width * twoPixelRatioH,
                                  )

                                ],
                              ),
                            ),
                            SizedBox(width: width * threeHundredPixelRatioH,),
                            Container(
                                child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.arrow_forward_ios,
                                          size: 20,
                                          color: ass,
                                        ))))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * sixteenPixelRatioW,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioH,
                        left: width * sixteenPixelRatioH),
                    child: Container(
                      height: height * oneEightyFivePixelRatioW,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFFD8DCE1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const IconTitleIconLandscapeClass(
                            icon: Icons.person,
                            title: 'Account',
                          ),
                          Padding(
                            padding:
                            EdgeInsets.only(left: width * fiftyPixelRatioH),
                            child: const Divider(
                              height: 1,
                              color: ass,
                            ),
                          ),
                          const IconTitleIconLandscapeClass(
                            icon: Icons.settings,
                            title: 'General',
                          ),
                          Padding(
                            padding:
                            EdgeInsets.only(left: width * fiftyPixelRatioH),
                            child: const Divider(
                              height: 1,
                              color: ass,
                            ),
                          ),
                          const IconTitleIconLandscapeClass(
                            icon: Icons.star,
                            title: 'Theme',
                          ),
                          Padding(
                            padding:
                            EdgeInsets.only(left: width * fiftyPixelRatioH),
                            child: const Divider(
                              height: 1,
                              color: ass,
                            ),
                          ),
                          const IconTitleIconLandscapeClass(
                            icon: Icons.star,
                            title: 'AppIcon',
                          ),
                          Padding(
                            padding:
                            EdgeInsets.only(left: width * fiftyPixelRatioH),
                            child: const Divider(
                              height: 1,
                              color: ass,
                            ),
                          ),
                          const IconTitleIconLandscapeClass(
                            icon: Icons.star,
                            title: 'Productivity',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * sixteenPixelRatioW,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * sixteenPixelRatioH,
                      right: width * sixteenPixelRatioH,
                    ),
                    child: const IconTitleIconLandscapeClass(
                      icon: Icons.notifications,
                      title: 'Notifications',
                    ),
                  ),
                  SizedBox(
                    height: height * sixteenPixelRatioW,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * sixteenPixelRatioH,
                      right: width * sixteenPixelRatioH,
                    ),
                    child: const IconTitleIconLandscapeClass(
                      icon: Icons.star,
                      title: 'Siri',
                    ),
                  ),
                  SizedBox(
                    height: height * sixteenPixelRatioW,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioH,
                        left: width * sixteenPixelRatioH),
                    child: Container(
                      height: height * oneSixtyFivePixelRatioW,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFFD8DCE1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const IconTitleIconLandscapeClass(
                            icon: Icons.settings,
                            title: 'Help and Feedback',
                          ),
                          Padding(
                            padding:
                            EdgeInsets.only(left: width * fiftyPixelRatioH),
                            child: const Divider(
                              height: 1,
                              color: ass,
                            ),
                          ),
                          const IconTitleIconLandscapeClass(
                            icon: Icons.star,
                            title: 'About',
                          ),
                          Padding(
                            padding:
                            EdgeInsets.only(left: width * fiftyPixelRatioH),
                            child: const Divider(
                              height: 1,
                              color: ass,
                            ),
                          ),
                          const IconTitleIconLandscapeClass(
                            icon: Icons.star,
                            title: "What's new",
                          ),
                          Padding(
                            padding:
                            EdgeInsets.only(left: width * fiftyPixelRatioH),
                            child: const Divider(
                              height: 1,
                              color: ass,
                            ),
                          ),
                          const IconTitleIconLandscapeClass(
                            icon: Icons.star,
                            title: "Sync",
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * sixteenPixelRatioW,
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                        left: width * sixteenPixelRatioH,
                        right: width * sixteenPixelRatioH,
                      ),
                      child: Container(
                        height: height * thirtyFivePixelRatioW,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFFD8DCE1),
                        ),
                        child: const Center(
                            child: Text(
                              "Log Out",
                              style: TextStyle(fontSize: 22, color: red),
                            )),
                      )),
                  SizedBox(
                    height: height * sevenPixelRatioW,
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                        left: width * sixteenPixelRatioH,
                        right: width * sixteenPixelRatioH,
                      ),
                      child: Container(
                        height: height * twentyPixelRatioW,
                        width: width,
                        child: const Center(
                            child: Text(
                              "Logged In as : kafiulislam@gmail.com",
                              style: TextStyle(fontSize: 12, color: black),
                            )),
                      )),
                  SizedBox(
                    height: height * thirtyTwoPixelRatioW,
                  ),
                ],
              ),

              // height: MediaQuery.of(context).size.height,

              // color: Colors.white,
            ),
          )
        ]),
      ),
    );
  }
}