import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';

class NotificationShowBoxLandscape extends StatefulWidget {
  const NotificationShowBoxLandscape({
    Key? key,
  }) : super(key: key);
  // const  ShowBoxMonthlyIncomeExpense({Key? key, required this.notificationNumber}): super(key: key);
  // final int notificationNumber;

  @override
  _NotificationShowBoxLandscapeState createState() =>
      _NotificationShowBoxLandscapeState();
}

class _NotificationShowBoxLandscapeState
    extends State<NotificationShowBoxLandscape> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Material(
        color: Colors.transparent,
        child: Stack(children: [

          Container(
            // height: 495,
            // height: height * 0.90,
            width: width,

            decoration: const BoxDecoration(
              color: Color(0xFFD8DCE1),

            ),

            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioH,
                        left: width * sixteenPixelRatioH),
                    child: Container(
                      height: height * fiftyPixelRatioW,
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
               Column(children: [
                 SizedBox(
                   height: height * sixteenPixelRatioW,
                 ),
                 Padding(
                   padding: EdgeInsets.only(
                       right: width * sixteenPixelRatioH,
                       left: width * sixteenPixelRatioH),
                   child: Container(
                     height: height * thirtyFivePixelRatioW,
                     width: width,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(16),
                       color: deepAss,
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
                             height: height * thirtyTwoPixelRatioW,
                             width: width * oneEightyFivePixelRatioH,
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
                             height: height * thirtyTwoPixelRatioW,
                             width: width * oneEightyFivePixelRatioH,
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
                   height: height * thirtyTwoPixelRatioH,
                 ),
                 Padding(
                   padding: EdgeInsets.only(
                     left: width * sixteenPixelRatioH,
                     right: width * sixteenPixelRatioH,
                   ),
                   child: Container(
                     height: height * threeHundredPixelRatioW,
                     width: width,
                     decoration: const BoxDecoration(
                         image: DecorationImage(
                             image: AssetImage('images/flower.png'),
                             fit: BoxFit.contain)),
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
                     height: height * fortyPixelRatioW,
                     width: width,
                     child: Column(
                       children: [
                         Container(
                           height: height * twentyPixelRatioW,
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
                           height: height * twentyPixelRatioW,
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
                   height: height * sixteenPixelRatioW,
                 ),
                 Padding(
                   padding: EdgeInsets.only(
                     left: width * sixteenPixelRatioH,
                     right: width * sixteenPixelRatioH,
                   ),
                   child: Container(
                     height: height * thirtyPixelRatioW,
                     width: width,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Container(
                           height: height * twentyFivePixelRatioW,
                           width: width * twentyFivePixelRatioH,
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
                           height: height * twentyFivePixelRatioW,
                           width: width * twentyFivePixelRatioH,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(100),
                             // border: Border.all(color: red),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
                 SizedBox(
                   height: height * sixteenPixelRatioW,
                 ),
               ],)
                ],
              ),
            ),

            // height: MediaQuery.of(context).size.height,

            // color: Colors.white,
          )
        ]),
      ),
    );
  }
}