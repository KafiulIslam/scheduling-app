import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';

class NotificationShowBoxPortrait extends StatefulWidget {
  const NotificationShowBoxPortrait({
    Key? key,
  }) : super(key: key);
  // const  ShowBoxMonthlyIncomeExpense({Key? key, required this.notificationNumber}): super(key: key);
  // final int notificationNumber;

  @override
  _NotificationShowBoxPortraitState createState() =>
      _NotificationShowBoxPortraitState();
}

class _NotificationShowBoxPortraitState
    extends State<NotificationShowBoxPortrait> {
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioW,
                        left: width * sixteenPixelRatioW),
                    child: Container(
                      height: height * fiftyPixelRatioH,
                      width: width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.done,
                                    size: 25,
                                    color: ass,
                                  ))),
                          Container(
                            child: const FittedBox(
                              fit: BoxFit.contain,
                              child: Center(
                                child: Text(
                                  'Notifications',
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
                  const Divider(
                    height: 1,
                    color: ass,
                  ),
                  SizedBox(
                    height: height * sixteenPixelRatioH,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioW,
                        left: width * sixteenPixelRatioW),
                    child: Container(
                      height: height * thirtyFivePixelRatioH,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: deepAss,
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
                              height: height * thirtyTwoPixelRatioH,
                              width: width * oneEightyFivePixelRatioW,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: lightAss,
                              ),
                              child: const Center(
                                  child: Text(
                                'All',
                                style: sixteenBlackTextStyle,
                              )),
                            ),
                            Container(
                              height: height * thirtyTwoPixelRatioH,
                              width: width * oneEightyFivePixelRatioW,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                // color:  const Color(0xFFD8DCE1) ,
                              ),
                              child: const Center(
                                  child: Text(
                                'Unread(0)',
                                style: sixteenBlackTextStyle,
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * thirtyTwoPixelRatioW,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * sixteenPixelRatioW,
                      right: width * sixteenPixelRatioW,
                    ),
                    child: Container(
                      height: height * threeHundredPixelRatioH,
                      width: width,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/flower.png'),
                              fit: BoxFit.contain)),
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
                      height: height * seventyPixelRatioH,
                      width: width,
                      child: Column(
                        children: [
                          Container(
                            height: height * twentyPixelRatioH,
                            width: width,
                            child: const FittedBox(
                                fit: BoxFit.contain,
                                child: Center(
                                    child: Text(
                                  'Stay - up - to - date',
                                  style: fourteenAssTextStyle,
                                ))),
                          ),
                          Container(
                            height: height * fortyPixelRatioH,
                            width: width,
                            child: const FittedBox(
                                fit: BoxFit.contain,
                                child: Center(
                                    child: Text(
                                  'Get notified here about changes in your shared projects',
                                  style: tenAssTextStyle,
                                ))),
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
                      height: height * thirtyPixelRatioH,
                      width: width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: height * twentyFivePixelRatioH,
                            width: width * twentyFivePixelRatioW,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: red),
                            ),
                            child: const Center(
                                child: Text(
                              '?',
                              style: TextStyle(
                                  color: red,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                          Container(
                            height: height * twentyFivePixelRatioH,
                            width: width * twentyFivePixelRatioW,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              // border: Border.all(color: red),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),

              // height: MediaQuery.of(context).size.height,

              // color: Colors.white,
            ))
      ]),
    );
  }
}
