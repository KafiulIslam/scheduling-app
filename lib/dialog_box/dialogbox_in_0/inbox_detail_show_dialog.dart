import 'package:flutter/material.dart';
import 'package:to_do_list/common/common_classes.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/calendar_show_box.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/menu_icon_inbox_detail_show_dialog.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/show_dialog_one_portrait.dart';
 import 'package:to_do_list/dialog_box/dialogbox_in_0/text_field_update_inbox_details_show_dialog.dart';



 class InboxDetailsShowDialog extends StatefulWidget {
  const InboxDetailsShowDialog({Key? key}) : super(key: key);

  @override
  _InboxDetailsShowDialogState createState() => _InboxDetailsShowDialogState();
}

class _InboxDetailsShowDialogState extends State<InboxDetailsShowDialog> {


     Widget optionForInboxDetailShowDialog = const SizedBox.shrink() ;
  Widget optionPickerFromMenuIconInboxDetailShow (Widget widget) {

    return optionForInboxDetailShowDialog = widget;  // through this function , parameter (value) of function will pass to variable (optionForFilterCollaborative)
  }


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


  _textFieldUpdateAlertDialog(BuildContext context,   ) {
    return showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 200),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return OrientationBuilder(builder: (_, orientation) {
          if (orientation == Orientation.portrait)  {
            return   const  Align(
              alignment: Alignment.centerRight,
              child: ShowDialogBackground(
                backColor: lightAss,
                inputColumn:  TextFieldUpdateInboxDetailsShowDialog(),

              ),
            );
          } else {
            return const  Align(
              alignment: Alignment.centerRight,
              child: ShowDialogBackground(
                backColor: lightAss,
                inputColumn:  TextFieldUpdateInboxDetailsShowDialog(),
              ),
            );
          }
        });

      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
              .animate(anim1),
          child: child,
        );
      },
    );
  }


  _menuIconAlertDialog(BuildContext context) {
    return showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 200),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return OrientationBuilder(builder: (_, orientation) {
          if (orientation == Orientation.portrait) {
            return   Align(
              alignment: Alignment.bottomCenter,
              child: MenuIconInboxDetailShowDialog(changeOption: optionPickerFromMenuIconInboxDetailShow ,),
            );
          } else {
            return   Align(
              alignment: Alignment.bottomCenter,
              child: MenuIconInboxDetailShowDialog(changeOption: optionPickerFromMenuIconInboxDetailShow,),
            );
          }
        });
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
              .animate(anim1),
          child: child,
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {


    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;


    return OrientationBuilder(builder: (_, orientation) {
      if (orientation == Orientation.portrait) {
        return Material(
          color: Colors.transparent,
          child: Stack(children: [
            Container(
              width: width,
              height: height,
            ),
            Positioned(
                top: height * 0.6,
                child: Container(
                  // height: 495,
                  height: height * 0.4,
                  width: width,

                  decoration: const BoxDecoration(
                    color: Color(0xFFD8DCE1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    // color: white,
                  ),

                  child: Container(
                    child: Padding(
                      padding:   EdgeInsets.only(right: width * sixteenPixelRatioW),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height * eightPixelRatioH,
                          ),
                          Container(
                            height: height * fivePixelRatioH,
                            width: width * thirtyPixelRatioW,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: dividerColor,
                            ),
                          ),
                          Container(
                            height: height * thirtyTwoPixelRatioH,
                            width: width,
                            child: Row(
                              mainAxisAlignment: mainSpaceBetween,
                              crossAxisAlignment: crossCenter,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      Navigator.pop(context,false);
                                    });
                                  },
                                  child: Container(

                                    height: height * thirtyPixelRatioH,
                                    // width: width * oneFiftyPixelRatioW,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          right: width * eightPixelRatioW),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment: crossCenter,
                                        children: [
                                          optionForInboxDetailShowDialog,
                                          // SizedBox(
                                          //   height: height * sixteenPixelRatioW,
                                          // ),
                                          // IconButton(
                                          //     onPressed: () {},
                                          //     icon: const Icon(
                                          //         Icons.arrow_forward_ios,
                                          //         size: 16,
                                          //         color: dividerColor))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: height * twentyFivePixelRatioH,
                                  width: width * twentyFivePixelRatioW,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: dividerColor,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        Navigator.pop(context);
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.arrow_forward_ios,
                                      size: 10,
                                      color: white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: height * ninetyFivePixelRatioH,
                            width: width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              // border: Border.all(color: black),
                            ),
                            child: Padding(
                              padding:
                              EdgeInsets.only(left: width * sixteenPixelRatioW),
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
                                            borderRadius:
                                            BorderRadius.circular(100),
                                            border: Border.all(color: black),
                                          ),
                                         ),
                                        SizedBox(
                                          width: width * fivePixelRatioW,
                                        ),
                                        GestureDetector(
                                          onTap: (){
                                            setState(() {
                                              _textFieldUpdateAlertDialog(context);
                                            });
                                          },
                                          child: Container(
                                            height: height * eighteenPixelRatioH,
                                            width: width * ninetyFivePixelRatioW,
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
                                          ),
                                        )
                                      ],
                                    ),
                                  ),//ban
                                  Container(
                                    height: height * thirtyPixelRatioH,
                                    width: width,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: height * twentyPixelRatioH,
                                          width: width * twentyPixelRatioW,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(100),
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * sixteenPixelRatioW,
                                        ),
                                        GestureDetector(
                                          onTap: (){
                                            setState(() {
                                              _textFieldUpdateAlertDialog(context);
                                            });
                                          },
                                          child: Container(
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
                                          ),
                                        )
                                      ],
                                    ),
                                  ),//26 date
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        calendarAlertDialog(context);
                                      });
                                    },
                                    child: Container(
                                      height: height * thirtyPixelRatioH,
                                      width: width,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: height * twentyPixelRatioH,
                                            width: width * twentyPixelRatioW,
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
                                                                '26, oct 2021',
                                                                style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: red,
                                                                ),
                                                              )),
                                                        )
                                                      ],
                                                    )),
                                                SizedBox(
                                                  width:
                                                  width * oneSixtyFivePixelRatioW,
                                                ),
                                                Container(),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: height * thirtyPixelRatioH,
                            width: width,
                            child: Padding(
                              padding:   EdgeInsets.only(left: width * thirtyTwoPixelRatioW,),
                              child: Row(
                                mainAxisAlignment: mainSpaceBetween,
                                crossAxisAlignment: crossCenter,
                                children: [
                                  Container(

                                    height: height * thirtyPixelRatioH,
                                    width: width * twoFiftyTwoPixelRatioW,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                       GestureDetector(
                                           onTap: (){
                                             setState(() {
                                               _menuIconAlertDialog(context);
                                             });
                                           },
                                           child: const CustomMenuIcon()),

                                        SizedBox(
                                          height: height * sixteenPixelRatioW,
                                        ),
                                        Container(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.money,
                                                  size: 20, color: dividerColor)),
                                        ),
                                        SizedBox(
                                          height: height * sixteenPixelRatioW,
                                        ),
                                        Container(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.flag,
                                                  size: 20, color: dividerColor)),
                                        ),
                                        SizedBox(
                                          height: height * sixteenPixelRatioW,
                                        ),
                                        Container(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.alarm,
                                                  size: 20, color: dividerColor)),
                                        ),
                                        SizedBox(
                                          height: height * sixteenPixelRatioW,
                                        ),
                                        Container(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.message_sharp,
                                                  size: 20, color: dividerColor)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {

                                      });
                                    },
                                    child: Container(
                                      height: height * fortyPixelRatioH,
                                      width: width * thirtyPixelRatioW,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceBetween,
                                        children: [
                                          Container(
                                              height: height * sevenPixelRatioH,
                                              width: width * sevenPixelRatioW,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: dividerColor),
                                                borderRadius: BorderRadius.circular(
                                                    100),
                                              )
                                          ),
                                          Container(
                                              height: height * sevenPixelRatioH,
                                              width: width * sevenPixelRatioW,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: dividerColor),
                                                borderRadius: BorderRadius.circular(
                                                    100),
                                              )
                                          ),
                                          Container(
                                              height: height * sevenPixelRatioH,
                                              width: width * sevenPixelRatioW,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: dividerColor),
                                                borderRadius: BorderRadius.circular(
                                                    100),
                                              )
                                          ),

                                        ],
                                      ),
                                    ),
                                  )

                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * eightPixelRatioH,
                          ),
                         const CommonDivider(leftPad: 0),
                          SizedBox(
                            height: height * eightPixelRatioH,
                          ),
                          Container(
                            height: height * thirtyPixelRatioH,
                            width: width,
                            child: Padding(
                              padding:   EdgeInsets.only( left: width * sixteenPixelRatioW ),
                              child: Row(
                                mainAxisAlignment: mainSpaceBetween,
                                crossAxisAlignment: crossCenter,
                                children: [
                                  Container(

                                    height: height * thirtyPixelRatioH,
                                    width: width * twoFiftyTwoPixelRatioW,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                     Container(
                                       child: const Icon(Icons.star,size: 25,color: dividerColor,),
                                     ),
                                        SizedBox(
                                          width: width * sixteenPixelRatioW,
                                        ),
                                        Container(
                                          child: const Text('Sub-tasks',style: eighteenBlackTextStyle,),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: height * fortyPixelRatioH,
                                    width: width * thirtyPixelRatioW,
                                    color: transparent,

                                    ),


                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * eightPixelRatioH,
                          ),
                            CommonDivider(leftPad: width * thirtyTwoPixelRatioW),

                          Container(
                            height: height * thirtyPixelRatioH,
                            width: width,
                            child: Padding(
                              padding:   EdgeInsets.only(left: width * thirtyTwoPixelRatioW,),
                              child: Row(
                                mainAxisAlignment: mainSpaceBetween,
                                crossAxisAlignment: crossCenter,
                                children: [
                                  Container(

                                    height: height * thirtyPixelRatioH,
                                    width: width * twoFiftyTwoPixelRatioW,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.add,
                                                  size: 20, color: dividerColor)),
                                        ),
                                        SizedBox(
                                          height: height * sixteenPixelRatioW,
                                        ),
                                        Container(
                                          child: const Text('Add sub-tasks',style: sixteenAssTextStyle,),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: height * fortyPixelRatioH,
                                    width: width * thirtyPixelRatioW,
                                    color: transparent,

                                  ),


                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                  // height: MediaQuery.of(context).size.height,

                  // color: Colors.white,
                ))
          ]),
        );
      } else {
        return Material(
          color: Colors.transparent,
          child: Stack(children: [
            Container(
              width: width,
              height: height,
            ),
            Positioned(
                top: height * 0.6,
                child: Container(
                  // height: 495,
                  height: height * 0.4,
                  width: width,

                  decoration: const BoxDecoration(
                    color: Color(0xFFD8DCE1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    // color: white,
                  ),

                  child: Container(
                    child: Padding(
                      padding:   EdgeInsets.only(right: width * sixteenPixelRatioH),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height * eightPixelRatioW,
                          ),
                          Container(
                            height: height * fivePixelRatioW,
                            width: width * thirtyPixelRatioH,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: dividerColor,
                            ),
                          ),
                          Container(
                            height: height * thirtyTwoPixelRatioW,
                            width: width,
                            child: Row(
                              mainAxisAlignment: mainSpaceBetween,
                              crossAxisAlignment: crossCenter,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      Navigator.pop(context,false);
                                    });
                                  },
                                  child: Container(

                                    height: height * thirtyPixelRatioW,
                                    // width: width * oneFiftyPixelRatioW,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          right: width * eightPixelRatioH),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment: crossCenter,
                                        children: [
                                          optionForInboxDetailShowDialog,
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: height * twentyFivePixelRatioW,
                                  width: width * twentyFivePixelRatioH,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: dividerColor,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        Navigator.pop(context);
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.arrow_forward_ios,
                                      size: 10,
                                      color: white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: height * ninetyFivePixelRatioW,
                            width: width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              // border: Border.all(color: black),
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
                                              style: sixteenAssTextStyle,
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        calendarAlertDialog(context);
                                      });
                                    },
                                    child: Container(
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
                                                                '26, oct 2021',
                                                                style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: red,
                                                                ),
                                                              )),
                                                        )
                                                      ],
                                                    )),
                                                SizedBox(
                                                  width:
                                                  width * oneSixtyFivePixelRatioH,
                                                ),
                                                Container(),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: height * thirtyPixelRatioW,
                            width: width,
                            child: Padding(
                              padding:   EdgeInsets.only(left: width * thirtyTwoPixelRatioH,),
                              child: Row(
                                mainAxisAlignment: mainSpaceBetween,
                                crossAxisAlignment: crossCenter,
                                children: [
                                  Container(

                                    height: height * thirtyPixelRatioW,
                                    width: width * twoFiftyTwoPixelRatioH,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.star,
                                                  size: 20, color: dividerColor)),
                                        ),
                                        SizedBox(
                                          height: height * sixteenPixelRatioH,
                                        ),
                                        Container(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.money,
                                                  size: 20, color: dividerColor)),
                                        ),
                                        SizedBox(
                                          height: height * sixteenPixelRatioH,
                                        ),
                                        Container(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.flag,
                                                  size: 20, color: dividerColor)),
                                        ),
                                        SizedBox(
                                          height: height * sixteenPixelRatioH,
                                        ),
                                        Container(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.alarm,
                                                  size: 20, color: dividerColor)),
                                        ),
                                        SizedBox(
                                          height: height * sixteenPixelRatioH,
                                        ),
                                        Container(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.message_sharp,
                                                  size: 20, color: dividerColor)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {

                                      });
                                    },
                                    child: Container(
                                      height: height * fortyPixelRatioW,
                                      width: width * thirtyPixelRatioH,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceBetween,
                                        children: [
                                          Container(
                                              height: height * sevenPixelRatioW,
                                              width: width * sevenPixelRatioH,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: dividerColor),
                                                borderRadius: BorderRadius.circular(
                                                    100),
                                              )
                                          ),
                                          Container(
                                              height: height * sevenPixelRatioW,
                                              width: width * sevenPixelRatioH,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: dividerColor),
                                                borderRadius: BorderRadius.circular(
                                                    100),
                                              )
                                          ),
                                          Container(
                                              height: height * sevenPixelRatioW,
                                              width: width * sevenPixelRatioH,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: dividerColor),
                                                borderRadius: BorderRadius.circular(
                                                    100),
                                              )
                                          ),

                                        ],
                                      ),
                                    ),
                                  )

                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * eightPixelRatioW,
                          ),
                          const CommonDivider(leftPad: 0),
                          SizedBox(
                            height: height * eightPixelRatioW,
                          ),
                          Container(
                            height: height * thirtyPixelRatioW,
                            width: width,
                            child: Row(
                              mainAxisAlignment: mainSpaceBetween,
                              crossAxisAlignment: crossCenter,
                              children: [
                                Container(

                                  height: height * thirtyPixelRatioW,
                                  width: width * twoFiftyTwoPixelRatioH,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.star,
                                                size: 20, color: dividerColor)),
                                      ),
                                      SizedBox(
                                        width : width * sixteenPixelRatioH,
                                      ),
                                      Container(
                                        child: const Text('Sub-tasks',style: eighteenBlackTextStyle,),
                                      ),

                                    ],
                                  ),
                                ),
                                Container(
                                  height: height * fortyPixelRatioW,
                                  width: width * thirtyPixelRatioH,
                                  color: transparent,

                                ),


                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * eightPixelRatioW,
                          ),
                          CommonDivider(leftPad: width * thirtyTwoPixelRatioH),

                          Container(
                            height: height * thirtyPixelRatioW,
                            width: width,
                            child: Padding(
                              padding:   EdgeInsets.only(left: width * thirtyTwoPixelRatioH,),
                              child: Row(
                                mainAxisAlignment: mainSpaceBetween,
                                crossAxisAlignment: crossCenter,
                                children: [
                                  Container(

                                    height: height * thirtyPixelRatioW,
                                    width: width * twoFiftyTwoPixelRatioH,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.add,
                                                  size: 20, color: dividerColor)),
                                        ),
                                        SizedBox(
                                          height: height * sixteenPixelRatioH,
                                        ),
                                        Container(
                                          child: const Text('Add sub-tasks',style: sixteenAssTextStyle,),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: height * fortyPixelRatioW,
                                    width: width * thirtyPixelRatioH,
                                    color: transparent,

                                  ),


                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                  // height: MediaQuery.of(context).size.height,

                  // color: Colors.white,
                ))
          ]),
        );
      }
    });
  }
}
