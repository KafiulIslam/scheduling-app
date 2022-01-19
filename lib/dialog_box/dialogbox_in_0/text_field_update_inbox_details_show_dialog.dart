import 'package:flutter/material.dart';
import 'package:to_do_list/common/common_classes.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/calendar_show_box.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/flag_mini_box_alert_dialog.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/inbox_mini_box_show_dialog.dart';



class TextFieldUpdateInboxDetailsShowDialog extends StatefulWidget     {



  const TextFieldUpdateInboxDetailsShowDialog(
      {Key? key,   })
      : super(key: key);



  @override
  _TextFieldUpdateInboxDetailsShowDialogState createState() =>
      _TextFieldUpdateInboxDetailsShowDialogState();
}

class _TextFieldUpdateInboxDetailsShowDialogState
    extends State<TextFieldUpdateInboxDetailsShowDialog> with  TickerProviderStateMixin  {


    late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 200),   vsync:  this,
    
  ) ;


    late final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );


        bool click = true;


         final TextEditingController planTitleFromTextField = TextEditingController();
         final TextEditingController descriptionFromTextField = TextEditingController();




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



  flagMiniBoxAlertDialog(BuildContext context) {
    return showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      // barrierColor: transparent,

      transitionDuration: const Duration(milliseconds: 200),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return OrientationBuilder(builder: (_, orientation)
        {
          if (orientation == Orientation.portrait) {
            return const Align(
              alignment: Alignment.center,
              child: FlagMiniBoxShowDialog(),
            );
          } else {
            return const Align(
              alignment: Alignment.center,
              child: FlagMiniBoxShowDialog(),
            );
          }
        }
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return
          SlideTransition(
          position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(anim1),
          child: child,
        );
        //   ScaleTransition(scale: CurvedAnimation(
        //   parent: controller,
        //   curve: Curves.fastOutSlowIn,
        // ),child: const MiniBoxShowDialog());

      },
    );
  }



  inboxMiniBoxAlertDialog(BuildContext context) {
      return showGeneralDialog(
        barrierLabel: "Label",
        barrierDismissible: true,
        barrierColor: Colors.black.withOpacity(0.5),
        // barrierColor: transparent,

        transitionDuration: const Duration(milliseconds: 200),
        context: context,
        pageBuilder: (context, anim1, anim2) {
          return OrientationBuilder(builder: (_, orientation)
          {
            if (orientation == Orientation.portrait) {
              return  const Align(
                alignment: Alignment.center,
                child:   InboxMiniBoxShowDialog(),
              );
            } else {
              return  const Align(
                alignment: Alignment.center,
                child:  InboxMiniBoxShowDialog(),
              );
            }
          }
          );
        },
        transitionBuilder: (context, anim1, anim2, child) {
          return   SlideTransition(
            position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(anim1),
            child: child,
          );


          //   ScaleTransition(scale: CurvedAnimation(
          //   parent: controller,
          //   curve: Curves.fastOutSlowIn,
          // ),child: const MiniBoxShowDialog());

            // ScaleTransition(scale: _animation,child: child);



        },
      );
    }



    customScrollViewMiniBoxAlertDialog(BuildContext context) {
      return showGeneralDialog(
        barrierLabel: "Label",
        barrierDismissible: true,
        barrierColor: Colors.black.withOpacity(0.5),
        // barrierColor: transparent,

        transitionDuration: const Duration(milliseconds: 200),
        context: context,
        pageBuilder: (context, anim1, anim2) {
          return OrientationBuilder(builder: (_, orientation)
          {
            if (orientation == Orientation.portrait) {
              return const Align(
                alignment: Alignment.center,
                child: CustomScrollViewMiniBoxShowDialog(),
              );
            } else {
              return const Align(
                alignment: Alignment.center,
                child: CustomScrollViewMiniBoxShowDialog(),
              );
            }
          }
          );
        },
        transitionBuilder: (context, anim1, anim2, child) {
          return
            SlideTransition(
              position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(anim1),
              child: child,
            );
          //   ScaleTransition(scale: CurvedAnimation(
          //   parent: controller,
          //   curve: Curves.fastOutSlowIn,
          // ),child: const MiniBoxShowDialog());

        },
      );
    }







  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return OrientationBuilder(builder: (_, orientation) {
      if (orientation == Orientation.portrait) {
        return Column(
          children: [
            Container(
              height: height * fiftyPixelRatioH,
              width: width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                color: lightAss,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    right: width * sixteenPixelRatioW,
                    left: width * sixteenPixelRatioW),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                 TextButton(onPressed:(){
                   setState(() {
                     Navigator.pop(context,false);
                   });
                 }, child: const Text('Cancel',style: TextStyle(color: red,fontSize: 16,),)),
                    Container(
                      child:const  FittedBox(
                        fit: BoxFit.contain,
                        child: Center(
                          child: Text(
                           'Edit Task',
                            style:  TextStyle(fontSize: 18, color: black),
                          ),
                        ),
                      ),
                    ),
                    TextButton(onPressed:(){
                      setState(() {
                        Navigator.pop(context,false);
                      });
                    }, child:   Text('save',style: TextStyle(color: lightRed,fontSize: 16,),)),
                  ],
                ),
              ),
            ),
            const CommonDivider(leftPad: 0),
            SizedBox(height: height * eightPixelRatioH,),
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
                        crossAxisAlignment: crossCenter,
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
                            width: width * sixteenPixelRatioW,
                          ),

                          SizedBox(
                            height: height * thirtyPixelRatioH,
                            width: width * threeHundredPixelRatioW,
                            child: Padding(
                              padding:     EdgeInsets.only(top: height * eightPixelRatioH),
                              child: TextFormField(
                                controller: planTitleFromTextField,
                                  // initialValue: click == false ? '@' : "B",
                                  decoration: const InputDecoration(
                                    hintText: 'Ban vs Ind',
                                    hintStyle: TextStyle(fontSize: 16,color: Colors.black, fontWeight: FontWeight.bold),
                                    border: InputBorder.none,

                                  )),
                            ),
                          ),
                         //ban
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

                          SizedBox(
                            height: height * thirtyPixelRatioH,
                            width: width * threeHundredPixelRatioW,
                            child: TextFormField(

                              controller: descriptionFromTextField ,
                                // initialValue: click == false ? '@' : "B",
                                decoration: const InputDecoration(
                                  hintText: '1st T20 in world cup',
                                  hintStyle: sixteenAssTextStyle,
                                  border: InputBorder.none,
                                )),
                          ),//26 date
                        ],
                      ),
                    ),//26 date
                   Container(height: height*thirtyPixelRatioH,width: width ,
                   child: Row(
                     mainAxisAlignment:MainAxisAlignment.start,
                     crossAxisAlignment: crossCenter,
                     children: [
                       GestureDetector(
                         onTap: (){
                           setState(() {
                             calendarAlertDialog(context);
                           });
                         },
                         child: Container(
                           height: height * thirtyPixelRatioH,
                           width: width * twoHundredPixelRatioW,
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

                                   ],
                                 ),
                               )
                             ],
                           ),
                         ),
                       ),

                       GestureDetector(
                         onTap: (){
                           setState(() {
                             inboxMiniBoxAlertDialog(context);
                           });
                         },
                         child: Container(
                           alignment: Alignment.center,
                           height: height * thirtyPixelRatioH,
                           width: width * hundredPixelRatioW,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(16),
                               border: Border.all(color: dividerColor)),
                           child: Center(
                             child: Padding(
                               padding: EdgeInsets.only(
                                   right: width * eightPixelRatioW),
                               child: Row(
                                 mainAxisAlignment:
                                 MainAxisAlignment.center,
                                 crossAxisAlignment:
                                 CrossAxisAlignment.center,
                                 children: [
                                   Container(
                                     child: IconButton(
                                         onPressed: () {},
                                         icon: const Icon(
                                           Icons.inbox,
                                           size: 12,
                                           color: Colors.blue,
                                         )),
                                   ),
                                   SizedBox(
                                     height: height * sixteenPixelRatioW,
                                   ),
                                   const Text(
                                     'Inbox',
                                     style: sixteenAssTextStyle,
                                   ),
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ),
                     ],
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
                padding:   EdgeInsets.only( left: width * fortyPixelRatioW ),
                child: Row(
                  mainAxisAlignment:mainSpaceBetween,
                  crossAxisAlignment: crossCenter,
                  children: [
                    Container(

                      height: height * thirtyPixelRatioH,
                      width: width * oneTwentyPixelRatioW,
                      child: Row(
                        mainAxisAlignment:
                        mainSpaceBetween ,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: IconButton(
                                onPressed: () {
                                  WidgetsBinding.instance!.addPostFrameCallback((_){

                                    setState(() {
                                      click = !click;

                                      var index = 0;
                                      if (!click) {index = 1;}
                                      // moneyMiniBoxAlertDialog(context);
                                    });

                                  });

                                },
                                icon: const Icon(Icons.money,
                                    size: 20, color: dividerColor)),
                          ),

                          Container(
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    flagMiniBoxAlertDialog(context);
                                  });
                                },
                                icon: const Icon(Icons.flag,
                                    size: 20, color: dividerColor)),
                          ),

                        ],
                      ),
                    ),
                    Container(height: height * thirtyPixelRatioH,width : width * fiftyPixelRatioW)

                  ],
                ),
              ),
            )

          ],
        );
      } else {
        return Column(
          children: [
            Container(
              height: height * fiftyPixelRatioW,
              width: width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                color: lightAss,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    right: width * sixteenPixelRatioH,
                    left: width * sixteenPixelRatioH),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(onPressed:(){
                      setState(() {
                        Navigator.pop(context,false);
                      });
                    }, child: const Text('Cancel',style: TextStyle(color: red,fontSize: 16,),)),
                    Container(
                      child:const  FittedBox(
                        fit: BoxFit.contain,
                        child: Center(
                          child: Text(
                            'Edit Task',
                            style:  TextStyle(fontSize: 18, color: black),
                          ),
                        ),
                      ),
                    ),
                    TextButton(onPressed:(){
                      setState(() {
                        Navigator.pop(context,false);
                      });
                    }, child:   Text('save',style: TextStyle(color: lightRed,fontSize: 16,),)),
                  ],
                ),
              ),
            ),
            const CommonDivider(leftPad: 0),
            SizedBox(height: height * eightPixelRatioW,),
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
                        crossAxisAlignment: crossCenter,
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
                            width: width * sixteenPixelRatioH,
                          ),

                          SizedBox(
                            height: height * thirtyPixelRatioW,
                            width: width * threeHundredPixelRatioH,
                            child: Padding(
                              padding:     EdgeInsets.only(top: height * eightPixelRatioW),
                              child: TextFormField(
                                controller: planTitleFromTextField,
                                  // initialValue: click == false ? '@' : 'B',
                                  decoration: const InputDecoration(
                                    hintText: 'Ban vs Ind',
                                    hintStyle: TextStyle(fontSize: 16,color: Colors.black, fontWeight: FontWeight.bold),
                                    border: InputBorder.none,

                                  )),
                            ),
                          ),
                          //ban
                        ],
                      ),
                    ),//ban
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

                          SizedBox(
                            height: height * thirtyPixelRatioW,
                            width: width * threeHundredPixelRatioH,
                            child: TextFormField(
                                // initialValue: click == false ? '@' : 'B',
                              controller: descriptionFromTextField,
                                decoration: const InputDecoration(
                                  hintText: '1st T20 in world cup',
                                  hintStyle: sixteenAssTextStyle,
                                  border: InputBorder.none,
                                )),
                          ),//26 date
                        ],
                      ),
                    ),//26 date
                    Container(height: height*thirtyPixelRatioW,width: width ,
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.start,
                        crossAxisAlignment: crossCenter,
                        children: [
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                calendarAlertDialog(context);
                              });
                            },
                            child: Container(
                              height: height * thirtyPixelRatioW,
                              width: width * twoHundredPixelRatioH,
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

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap: (){
                              setState(() {
                                inboxMiniBoxAlertDialog(context);
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: height * thirtyPixelRatioW,
                              width: width * oneHundredPixelRatioH,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(color: dividerColor)),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      right: width * eightPixelRatioH),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.inbox,
                                              size: 12,
                                              color: Colors.blue,
                                            )),
                                      ),
                                      SizedBox(
                                        height: height * sixteenPixelRatioW,
                                      ),
                                      const Text(
                                        'Inbox',
                                        style: sixteenAssTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
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
                padding:   EdgeInsets.only( left: width * fortyPixelRatioH ),
                child: Row(
                  mainAxisAlignment:mainSpaceBetween,
                  crossAxisAlignment: crossCenter,
                  children: [
                    Container(

                      height: height * thirtyPixelRatioW,
                      width: width * oneTwentyPixelRatioH,
                      child: Row(
                        mainAxisAlignment:
                        mainSpaceBetween ,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: IconButton(
                                onPressed: () {
                                  WidgetsBinding.instance!.addPostFrameCallback((_){

                                    setState(() {
                                      click = !click;

                                      var index = 0;
                                      if (!click) {index = 1;}
                                      // moneyMiniBoxAlertDialog(context);
                                    });

                                  });

                                },
                                icon: const Icon(Icons.money,
                                    size: 20, color: dividerColor)),
                          ),

                          Container(
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    flagMiniBoxAlertDialog(context);
                                  });
                                },
                                icon: const Icon(Icons.flag,
                                    size: 20, color: dividerColor)),
                          ),

                        ],
                      ),
                    ),
                    Container(height: height * thirtyPixelRatioW,width : width * fiftyPixelRatioH)

                  ],
                ),
              ),
            )

          ],
        );
      }
    });
  }
}