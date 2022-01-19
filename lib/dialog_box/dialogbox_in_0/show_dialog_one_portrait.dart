
import 'package:flutter/material.dart';
import 'package:to_do_list/back_button_page/back_button_interface.dart';
import 'package:to_do_list/common/common_classes.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/activity_in_show_dialog_one.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/setting_in_appbar_show_dialog.dart';



class ShowDialogOnePortrait extends StatefulWidget {
  const ShowDialogOnePortrait({
    Key? key,
  }) : super(key: key);
  // const  ShowBoxMonthlyIncomeExpense({Key? key, required this.notificationNumber}): super(key: key);
  // final int notificationNumber;

  @override
  _ShowDialogOnePortraitState createState() => _ShowDialogOnePortraitState();
}

class _ShowDialogOnePortraitState extends State<ShowDialogOnePortrait> with SingleTickerProviderStateMixin {


  List<int> index = [1, 2, 3];
  int selectButton = 1;



  navigatorPopToDown(Widget nextClass) {
    return Navigator.pop(
        context,
        PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 2000),
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


  _settingInAppBarAlertDialog(BuildContext context) {
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
              alignment: Alignment.centerRight,
              child: ShowDialogBackground(
                backColor: deepAss,
                inputColumn: SettingInAppBarShowDialog(),
              ),
            );
          } else {
            return const Align(
              alignment: Alignment.centerRight,
              child: ShowDialogBackground(
                backColor: deepAss,
                inputColumn: SettingInAppBarShowDialog(),
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


  _activityAlertDialog(BuildContext context) {
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
              alignment: Alignment.centerRight,
              child: ShowDialogBackground(
                backColor: lightAss,
                inputColumn: ActivityShowDialogOne(),
              ),
            );
          } else {
            return const Align(
              alignment: Alignment.centerRight,
              child: ShowDialogBackground(
                backColor: lightAss,
                inputColumn: ActivityShowDialogOne(),
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


  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return ShowDialogBackground(
        backColor: lightAss,
        inputColumn: Column(
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
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _settingInAppBarAlertDialog(context);
                        });
                      },
                      child: Container(
                        child: const FittedBox(
                          fit: BoxFit.contain,
                          child: Center(
                            child: Text(
                              'Settings',
                              style: TextStyle(fontSize: 18, color: red),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: const FittedBox(
                        fit: BoxFit.contain,
                        child: Center(
                          child: Text(
                            'Productivity',
                            style: TextStyle(fontSize: 18, color: black),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          navigatorPopToDown(const BackButtonInterface());
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
              color: deepAss,
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: width * sixteenPixelRatioW,
                  left: width * sixteenPixelRatioW),
              child: Container(
                  height: height * oneTwentyPixelRatioH,
                  width: width,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _activityAlertDialog(context);
                          });
                        },
                        child: Container(
                            height: height * eightyPixelRatioH,
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: height * fiftyPixelRatioH,
                                  width: width * fiftyPixelRatioW,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        color: red,
                                        width: width * twoPixelRatioW),
                                  ),
                                ),
                                Container(
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: const Text(
                                            'Kafiul Islam',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black),
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * fivePixelRatioH,
                                        ),
                                        Container(
                                          child: const Text(
                                            '0 task completed',
                                            textAlign: TextAlign.start,
                                            style: sixteenAssTextStyle,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width * oneHundredEightPixelRatioH,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_back_ios,
                                    size: 16,
                                    color: ass,
                                  ),
                                ),
                              ],
                            )),
                      ),
                      Container(
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
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectButton = index[0];
                                  });
                                },
                                child:   DailYWeeklyKarmaButton(
                                  buttonColor: selectButton == 1 ? lightAss : deepAss,
                                  buttonName: 'Daily',

                                ),
                              ),
                              Container(
                                height: height * sixteenPixelRatioH,
                                width: 1,
                                color: selectButton == 3 ? dividerColor : Colors.transparent,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectButton = index[1];
                                  });
                                },
                                child:   DailYWeeklyKarmaButton(
                                  buttonColor: selectButton == 2 ? lightAss : deepAss,
                                  buttonName: 'Weekly',

                                ),
                              ),
                              Container(
                                height: height * sixteenPixelRatioH,
                                width: 1,
                                color: selectButton == 1 ? dividerColor : Colors.transparent,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectButton = index[2];
                                  });
                                },
                                child:   DailYWeeklyKarmaButton(
                                  buttonColor: selectButton == 3 ? lightAss : deepAss,
                                  buttonName: 'Karma',

                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            const Divider(
              height: 1,
              color: deepAss,
            ),





                    selectButton == 1
                      ? const  DetailsForDailyButton()
                      : selectButton == 2
                      ?     const  DetailsForWeeklyButton( )
                      :     const DetailsForKarmaButton( ),



          ],
        ));
  }
}
