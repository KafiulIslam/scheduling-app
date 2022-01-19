import 'package:flutter/material.dart';
import 'package:to_do_list/common/common_classes.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/floating_add_page.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/inbox_detail_show_dialog.dart';



class InboxClass extends StatefulWidget {

  final String planTitleFromTextField ;
  final String descriptionFromTextField;

  const InboxClass({Key? key, required this. planTitleFromTextField , required this.descriptionFromTextField}) : super(key: key);



  @override
  State<InboxClass> createState() => _InboxClassState();
}

class _InboxClassState extends State<InboxClass> {


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


  inboxDetailsAlertDialog(BuildContext context) {
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
              child: InboxDetailsShowDialog(),
            );
          } else {
            return const Align(
              alignment: Alignment.bottomCenter,
              child: InboxDetailsShowDialog(),
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
                const AppBarWithIconTitleTwoIconPortrait(
                  title: 'Inbox',

                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: height * sixteenPixelRatioH,
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            inboxDetailsAlertDialog(context);
                          });
                        },
                        child: Container(
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
                                      Container(
                                        height: height * eighteenPixelRatioH,
                                        width: width * ninetyFivePixelRatioW,
                                        child:  const FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            'Ban vs Ind',
                                            style:   TextStyle(
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
                                      Container(
                                        // height: 16,
                                        // width: 70,
                                        child: const FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            "1st T20 match in world cup",
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
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Divider(height: 1,color: black.withOpacity(0.5),),
                    ],
                  ),
                ),
              ],
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
                                          style:  TextStyle(
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
                                         '1st match in T20 world cup',
                                          style:  TextStyle(
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
