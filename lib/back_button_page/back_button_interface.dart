import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/back_button_page/search_page.dart';
import 'package:to_do_list/common/common_classes.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/floating_add_page.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/new_filter_show_dialog.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/notification_landscape_show_box.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/notification_portrait_show_box.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/show_dialog_one_landscape.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/show_dialog_one_portrait.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/new_label_show_dialog.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/new_project_show_dialog.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/settings_show_box.dart';
import 'package:to_do_list/inbox_page.dart';
import 'package:to_do_list/main.dart';
import 'package:to_do_list/common/number_ratio.dart';
import 'package:to_do_list/upcoming_page.dart';
// import 'package:getwidget/getwidget.dart';
import 'package:accordion/accordion.dart';

class BackButtonInterface extends StatefulWidget {
  const BackButtonInterface({Key? key}) : super(key: key);

  @override
  _BackButtonInterfaceState createState() => _BackButtonInterfaceState();
}

class _BackButtonInterfaceState extends State<BackButtonInterface> {


  _createAlertDialog(BuildContext context) {
    return showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 200),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return OrientationBuilder(builder: (_, orientation) {
          if (orientation == Orientation.portrait) {
            return const Align(
              alignment: Alignment.bottomCenter,
              child: ShowDialogOnePortrait(),
            );
          } else {
            return const Align(
              alignment: Alignment.bottomCenter,
              child: ShowDialogOneLandscape(),
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


  _notificationAlertDialog(BuildContext context) {
    return showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 200),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return OrientationBuilder(builder: (_, orientation) {
          if (orientation == Orientation.portrait) {
            return const Align(
              alignment: Alignment.bottomCenter,
              child: NotificationShowBoxPortrait(),
            );
          } else {
            return const Align(
              alignment: Alignment.bottomCenter,
              child: NotificationShowBoxLandscape(),
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


  _settingAlertDialog(BuildContext context) {
    return showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 200),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return OrientationBuilder(builder: (_, orientation) {
          if (orientation == Orientation.portrait) {
            return const Align(
              alignment: Alignment.bottomCenter,
              child: SettingShowBoxPortrait(),
            );
          } else {
            return const Align(
              alignment: Alignment.bottomCenter,
              child: SettingShowBoxLandscape(),
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

  navigatorPopFromLeftSide(Widget nextClass) {
    return Navigator.pop(
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

  _newProjectShowDialog(
      BuildContext context, Widget portrait, Widget landscape) {
    return showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 200),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return OrientationBuilder(builder: (_, orientation) {
          if (orientation == Orientation.portrait) {
            return Align(
              alignment: Alignment.bottomCenter,
              child: portrait,
            );
          } else {
            return Align(
              alignment: Alignment.bottomCenter,
              child: landscape,
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

  floatingAddAlertDialog(BuildContext context) {
    return showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 200),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return OrientationBuilder(builder: (_, orientation) {
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

    return SafeArea(
        child: Scaffold(
      // backgroundColor: const Color(0xFFD8DCE1),
      backgroundColor: deepAss,
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
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioW),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _createAlertDialog(context);
                            });
                          },
                          child: Container(
                            height: height * fortyPixelRatioH,
                            width: width * seventyPixelRatioW,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Container(
                                    height: height * twentyTwoPixelRatioH,
                                    width: width * twentyTwoPixelRatioW,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(color: white),
                                    ),
                                    child: const Icon(
                                      Icons.multiline_chart,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: const FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      '0/5',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // const SizedBox(width: 3,),

                        Container(
                          height: height * fortyPixelRatioH,
                          width: width * oneFiftyPixelRatioW,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SearchClass()));
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.search,
                                    size: 28,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _notificationAlertDialog(context);
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.notification_important,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _settingAlertDialog(context);
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.settings,
                                    size: 25,
                                    color: Colors.white,
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
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioW,
                        left: width * sixteenPixelRatioW),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: height * sixteenPixelRatioH,
                        ),
                        Container(
                          height: height * oneHundredEightPixelRatioH,
                          width: width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    navigatorPushFromRightSide(InboxClass(
                                      planTitleFromTextField: planTitleFromTextField.toString(),
                                      descriptionFromTextField: descriptionFromTextField.toString(),
                                    ));
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
                        SizedBox(
                          height: height * thirtyTwoPixelRatioH,
                        ),
                      ],
                    ),
                  ),
                ),
                Accordion(
                  scrollIntoViewOfItems: ScrollIntoViewOfItems.fast,
                  initialOpeningSequenceDelay: 200,
                  disableScrolling: true,

                  // maxOpenSections: 1,
                  // header : TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                  // leftIcon: const Icon(Icons.audiotrack, color: Colors.white),
                  children: [
                    AccordionSection(
                      headerBackgroundColor: transparent,
                      contentBackgroundColor: lightAss,
                      contentBorderColor: lightAss,
                      contentHorizontalPadding: 0.0,
                      contentVerticalPadding: 00.00,
                      headerPadding: const EdgeInsets.only(left: 30),
                      rightIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.arrow_drop_down,
                            color: dividerColor,
                            size: 30,
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  _newProjectShowDialog(
                                      context,
                                      const NewProjectShowDialogPortrait(),
                                      const NewProjectShowDialogLandscape());
                                });
                              },
                              icon: const Icon(
                                Icons.add,
                                size: 25,
                                color: dividerColor,
                              ))
                        ],
                      ),
                      flipRightIconIfOpen: false,
                      isOpen: true,
                      header: const Text('Projects',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.black, fontSize: 17)),
                      content: Container(
                          height: height * sixtyFivePixelRatioH,
                          width: width,
                          // decoration: sixteenBorderRadiusInLightAss,
                          child: Column(
                            children: [
                              Container(
                                height: height * thirtyPixelRatioH,
                                width: width,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: width * sixteenPixelRatioW,
                                      right: width * eightPixelRatioW),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: height * thirtyPixelRatioH,
                                        width: width * oneFiftyPixelRatioW,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: height * eightPixelRatioH,
                                              width: width * eightPixelRatioW,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                color: dividerColor,
                                              ),
                                            ),
                                            SizedBox(
                                              width: width * eightPixelRatioW,
                                            ),
                                            Container(
                                              child: const Text(
                                                "Welcome",
                                                style: sixteenAssTextStyle,
                                              ),
                                            ),
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.star,
                                                  size: 15,
                                                  color: Colors.yellow,
                                                ))
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: height * thirtyPixelRatioH,
                                        width: width * thirtyPixelRatioW,
                                        child: const Center(
                                            child: Text('9',
                                                style: sixteenAssTextStyle)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const Divider(height: 1, color: dividerColor),
                              const ContentInAccordion(
                                title: 'Try Boards',
                                number: '3',
                              ),
                            ],
                          )),
                    ),
                    AccordionSection(
                      headerBackgroundColor: transparent,
                      contentBackgroundColor: lightAss,
                      contentBorderColor: lightAss,
                      contentHorizontalPadding: 0.0,
                      contentVerticalPadding: 00.00,
                      headerPadding: const EdgeInsets.only(left: 30),
                      rightIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.arrow_drop_down,
                            color: dividerColor,
                            size: 30,
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  _newProjectShowDialog(
                                      context,
                                      const NewLabelShowDialogPortrait(),
                                      const NewLabelShowDialogLandscape());
                                });
                              },
                              icon: const Icon(
                                Icons.add,
                                size: 25,
                                color: dividerColor,
                              ))
                        ],
                      ),
                      flipRightIconIfOpen: false,
                      isOpen: true,
                      header: const Text('Labels',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.black, fontSize: 17)),
                      content: Container(),
                    ),
                    AccordionSection(
                      headerBackgroundColor: transparent,
                      contentBackgroundColor: lightAss,
                      contentBorderColor: lightAss,
                      contentHorizontalPadding: 0.0,
                      contentVerticalPadding: 00.00,
                      headerPadding: const EdgeInsets.only(left: 30),
                      rightIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.arrow_drop_down,
                            color: dividerColor,
                            size: 30,
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  _newProjectShowDialog(
                                      context,
                                      const NewFilterShowDialogPortrait(),
                                      const NewFilterShowDialogLandscape());
                                });
                              },
                              icon: const Icon(
                                Icons.add,
                                size: 25,
                                color: dividerColor,
                              ))
                        ],
                      ),
                      flipRightIconIfOpen: false,
                      isOpen: true,
                      header: const Text('Filters',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.black, fontSize: 17)),
                      content: Container(
                          height: height * sixtyFivePixelRatioH,
                          width: width,
                          // decoration: sixteenBorderRadiusInLightAss,
                          child: Column(
                            children: const [
                              ContentInAccordion(
                                title: 'Assigned to me',
                                number: '0',
                              ),
                              Divider(height: 1, color: dividerColor),
                              ContentInAccordion(
                                title: 'Priority 1',
                                number: '0',
                              ),
                            ],
                          )),
                    ),
                  ],
                )
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
                    height: height * fiftyPixelRatioW, // it is not changed yet
                    width: width,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: width * sixteenPixelRatioH,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _createAlertDialog(context);
                              });
                            },
                            child: Container(
                              height: height * fortyPixelRatioW,
                              width: width * seventyPixelRatioH,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Container(
                                      height: height * twentyTwoPixelRatioW,
                                      width: width * twentyTwoPixelRatioH,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        border: Border.all(color: white),
                                      ),
                                      child: const Icon(
                                        Icons.multiline_chart,
                                        size: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: const FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        '0/5',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ), //pie with number
                          // const SizedBox(width: 3,),

                          Container(
                            height: height * fortyPixelRatioW,
                            width: width * oneFiftyPixelRatioH,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.search,
                                      size: 28,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _notificationAlertDialog(context);
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.notification_important,
                                      size: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _settingAlertDialog(context);
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.settings,
                                      size: 25,
                                      color: Colors.white,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: height * sixteenPixelRatioW,
                        ),
                        Container(
                          height: height * oneHundredEightPixelRatioW,
                          width: width,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: width * sixteenPixelRatioH,
                                right: width * sixteenPixelRatioH),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      navigatorPushFromRightSide(InboxClass(
                                        planTitleFromTextField:
                                        planTitleFromTextField.toString(),
                                        descriptionFromTextField:
                                        descriptionFromTextField.toString(),
                                      ));
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
                                          height:
                                              height * thirtyFivePixelRatioW,
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
                                                width: width *
                                                    twentyFivePixelRatioH,
                                                decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  10)),
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
                                                  width:
                                                      width * sixtyPixelRatioH,
                                                  child: const Center(
                                                    child: Text(
                                                      'Inbox',
                                                      style: TextStyle(
                                                        fontSize: 18,
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
                                            width:
                                                width * thirtyFivePixelRatioH,
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
                                    navigatorPushFromRightSide(
                                        const MyHomePage());
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
                                          height:
                                              height * thirtyFivePixelRatioW,
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
                                                width: width *
                                                    twentyFivePixelRatioH,
                                                decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  10)),
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
                                                      width * sixtyPixelRatioH,
                                                  child: const Center(
                                                    child: Text(
                                                      'Today',
                                                      style: TextStyle(
                                                        fontSize: 18,
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
                                            width:
                                                width * thirtyFivePixelRatioH,
                                            child: const Center(
                                              child: Text(
                                                '1',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    navigatorPushFromRightSide(
                                        const UpcomingClass());
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
                                          height:
                                              height * thirtyFivePixelRatioW,
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
                                                width: width *
                                                    twentyFivePixelRatioH,
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
                        SizedBox(
                          height: height * thirtyTwoPixelRatioW,
                        ),
                        Accordion(
                          scrollIntoViewOfItems: ScrollIntoViewOfItems.fast,
                          initialOpeningSequenceDelay: 200,
                          disableScrolling: true,

                          maxOpenSections: 1,
                          // header : TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                          // leftIcon: const Icon(Icons.audiotrack, color: Colors.white),
                          children: [
                            AccordionSection(
                              headerBackgroundColor: transparent,
                              contentBackgroundColor: lightAss,
                              contentBorderColor: lightAss,
                              contentHorizontalPadding: 0.0,
                              contentVerticalPadding: 00.00,
                              headerPadding: const EdgeInsets.only(left: 30),
                              rightIcon: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.arrow_drop_down,
                                    color: dividerColor,
                                    size: 30,
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _newProjectShowDialog(
                                              context,
                                              const NewProjectShowDialogPortrait(),
                                              const NewProjectShowDialogLandscape());
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        size: 25,
                                        color: dividerColor,
                                      ))
                                ],
                              ),
                              flipRightIconIfOpen: false,
                              isOpen: true,
                              header: const Text('Projects',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17)),
                              content: Container(
                                  height: height * sixtyFivePixelRatioW,
                                  width: width,
                                  // decoration: sixteenBorderRadiusInLightAss,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: height * thirtyPixelRatioW,
                                        width: width,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: width * sixteenPixelRatioH,
                                              right: width * eightPixelRatioH),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                height:
                                                    height * thirtyPixelRatioW,
                                                width:
                                                    width * oneFiftyPixelRatioH,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      height: height *
                                                          eightPixelRatioW,
                                                      width: width *
                                                          eightPixelRatioH,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        color: dividerColor,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: width *
                                                          eightPixelRatioH,
                                                    ),
                                                    Container(
                                                      child: const Text(
                                                        "Welcome",
                                                        style:
                                                            sixteenAssTextStyle,
                                                      ),
                                                    ),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: const Icon(
                                                          Icons.star,
                                                          size: 15,
                                                          color: Colors.yellow,
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height:
                                                    height * thirtyPixelRatioW,
                                                width:
                                                    width * thirtyPixelRatioH,
                                                child: const Center(
                                                    child: Text('9',
                                                        style:
                                                            sixteenAssTextStyle)),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Divider(
                                          height: 1, color: dividerColor),
                                      const ContentInAccordion(
                                        title: 'Try Boards',
                                        number: '3',
                                      ),
                                    ],
                                  )),
                            ),
                            AccordionSection(
                              headerBackgroundColor: transparent,
                              contentBackgroundColor: lightAss,
                              contentBorderColor: lightAss,
                              contentHorizontalPadding: 0.0,
                              contentVerticalPadding: 00.00,
                              headerPadding: const EdgeInsets.only(left: 30),
                              rightIcon: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.arrow_drop_down,
                                    color: dividerColor,
                                    size: 30,
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _newProjectShowDialog(
                                              context,
                                              const NewLabelShowDialogPortrait(),
                                              const NewLabelShowDialogLandscape());
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        size: 25,
                                        color: dividerColor,
                                      ))
                                ],
                              ),
                              flipRightIconIfOpen: false,
                              isOpen: true,
                              header: const Text('Labels',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17)),
                              content: Container(),
                            ),
                            AccordionSection(
                              headerBackgroundColor: transparent,
                              contentBackgroundColor: lightAss,
                              contentBorderColor: lightAss,
                              contentHorizontalPadding: 0.0,
                              contentVerticalPadding: 00.00,
                              headerPadding: const EdgeInsets.only(left: 30),
                              rightIcon: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.arrow_drop_down,
                                    color: dividerColor,
                                    size: 30,
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _newProjectShowDialog(
                                              context,
                                              const NewFilterShowDialogPortrait(),
                                              const NewFilterShowDialogLandscape());
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        size: 25,
                                        color: dividerColor,
                                      ))
                                ],
                              ),
                              flipRightIconIfOpen: false,
                              isOpen: true,
                              header: const Text('Filters',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17)),
                              content: Container(
                                  height: height * sixtyFivePixelRatioW,
                                  width: width,
                                  // decoration: sixteenBorderRadiusInLightAss,
                                  child: Column(
                                    children: const [
                                      ContentInAccordion(
                                        title: 'Assigned to me',
                                        number: '0',
                                      ),
                                      Divider(height: 1, color: dividerColor),
                                      ContentInAccordion(
                                        title: 'Priority 1',
                                        number: '0',
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Accordion(
                    scrollIntoViewOfItems: ScrollIntoViewOfItems.fast,
                    initialOpeningSequenceDelay: 200,
                    disableScrolling: true,

                    // maxOpenSections: 1,
                    // header : TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                    // leftIcon: const Icon(Icons.audiotrack, color: Colors.white),
                    children: [
                      AccordionSection(
                        headerBackgroundColor: transparent,
                        contentBackgroundColor: lightAss,
                        contentBorderColor: lightAss,
                        contentHorizontalPadding: 0.0,
                        contentVerticalPadding: 00.00,
                        headerPadding: const EdgeInsets.only(left: 30),
                        rightIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.arrow_drop_down,
                              color: dividerColor,
                              size: 30,
                            ),
                            IconButton(
                                onPressed: () {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        _newProjectShowDialog(
            context,
            const NewProjectShowDialogPortrait(),
            const NewProjectShowDialogLandscape());
      });
    });
                                },
                                icon: const Icon(
                                  Icons.add,
                                  size: 25,
                                  color: dividerColor,
                                ))
                          ],
                        ),
                        flipRightIconIfOpen: false,
                        isOpen: true,
                        header: const Text('Projects',
                            textAlign: TextAlign.start,
                            style:
                                TextStyle(color: Colors.black, fontSize: 17)),
                        content: Container(
                            height: height * sixtyFivePixelRatioW,
                            width: width,
                            // decoration: sixteenBorderRadiusInLightAss,
                            child: Column(
                              children: [
                                Container(
                                  height: height * thirtyPixelRatioW,
                                  width: width,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: width * sixteenPixelRatioH,
                                        right: width * eightPixelRatioH),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: height * thirtyPixelRatioW,
                                          width: width * oneFiftyPixelRatioH,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                height:
                                                    height * eightPixelRatioW,
                                                width: width * eightPixelRatioH,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: dividerColor,
                                                ),
                                              ),
                                              SizedBox(
                                                width: width * eightPixelRatioH,
                                              ),
                                              Container(
                                                child: const Text(
                                                  "Welcome",
                                                  style: sixteenAssTextStyle,
                                                ),
                                              ),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Colors.yellow,
                                                  ))
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: height * thirtyPixelRatioW,
                                          width: width * thirtyPixelRatioH,
                                          child: const Center(
                                              child: Text('9',
                                                  style: sixteenAssTextStyle)),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const Divider(height: 1, color: dividerColor),
                                const ContentInAccordion(
                                  title: 'Try Boards',
                                  number: '3',
                                ),
                              ],
                            )),
                      ),
                      AccordionSection(
                        headerBackgroundColor: transparent,
                        contentBackgroundColor: lightAss,
                        contentBorderColor: lightAss,
                        contentHorizontalPadding: 0.0,
                        contentVerticalPadding: 00.00,
                        headerPadding: const EdgeInsets.only(left: 30),
                        rightIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.arrow_drop_down,
                              color: dividerColor,
                              size: 30,
                            ),
                            IconButton(
                                onPressed: () {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        _newProjectShowDialog(
            context,
            const NewLabelShowDialogPortrait(),
            const NewLabelShowDialogLandscape());
      });
    });
                                },
                                icon: const Icon(
                                  Icons.add,
                                  size: 25,
                                  color: dividerColor,
                                ))
                          ],
                        ),
                        flipRightIconIfOpen: false,
                        isOpen: true,
                        header: const Text('Labels',
                            textAlign: TextAlign.start,
                            style:
                                TextStyle(color: Colors.black, fontSize: 17)),
                        content: Container(),
                      ),
                      AccordionSection(
                        headerBackgroundColor: transparent,
                        contentBackgroundColor: lightAss,
                        contentBorderColor: lightAss,
                        contentHorizontalPadding: 0.0,
                        contentVerticalPadding: 00.00,
                        headerPadding: const EdgeInsets.only(left: 30),
                        rightIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.arrow_drop_down,
                              color: dividerColor,
                              size: 30,
                            ),
                            IconButton(
                                onPressed: () {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        _newProjectShowDialog(
            context,
            const NewFilterShowDialogPortrait(),
            const NewFilterShowDialogLandscape());
      });
    });
                                },
                                icon: const Icon(
                                  Icons.add,
                                  size: 25,
                                  color: dividerColor,
                                ))
                          ],
                        ),
                        flipRightIconIfOpen: false,
                        isOpen: true,
                        header: const Text('Filters',
                            textAlign: TextAlign.start,
                            style:
                                TextStyle(color: Colors.black, fontSize: 17)),
                        content: Container(
                            height: height * sixtyFivePixelRatioW,
                            width: width,
                            // decoration: sixteenBorderRadiusInLightAss,
                            child: Column(
                              children: const [
                                ContentInAccordion(
                                  title: 'Assigned to me',
                                  number: '0',
                                ),
                                Divider(height: 1, color: dividerColor),
                                ContentInAccordion(
                                  title: 'Priority 1',
                                  number: '0',
                                ),
                              ],
                            )),
                      ),
                    ],
                  )
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
