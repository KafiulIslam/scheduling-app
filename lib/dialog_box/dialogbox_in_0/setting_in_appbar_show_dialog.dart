import 'package:flutter/material.dart';
import 'package:to_do_list/common/common_classes.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';

class SettingInAppBarShowDialog extends StatefulWidget {
  const SettingInAppBarShowDialog({Key? key}) : super(key: key);

  @override
  _SettingInAppBarShowDialogState createState() =>
      _SettingInAppBarShowDialogState();
}

class _SettingInAppBarShowDialogState extends State<SettingInAppBarShowDialog> {
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
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: height * fiftyPixelRatioH,
                        width: width * ninetyPixelRatioW,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                              color: red,
                            ),
                            Container(
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
                          ],
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
                    Container(
                      height: height * fiftyPixelRatioH,
                      width: width * ninetyPixelRatioW,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: width * sixteenPixelRatioW,
                  left: width * sixteenPixelRatioW),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(
                    height: height * sixteenPixelRatioH,
                  ),
                  Container(
                    height: height * thirtyFivePixelRatioH,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
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
                          Container(
                            child: const Text(
                              'Use karma',
                              style: sixteenAssTextStyle,
                            ),
                          ),
                          Container(
                            child: Stack(
                              children: [
                                Container(
                                  height: height * twentyPixelRatioH,
                                  width: width * thirtyFivePixelRatioW,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: green,
                                  ),
                                ),
                                Positioned(
                                    top: 2,
                                    right: 2,
                                    child: Container(
                                      height: height * sixteenPixelRatioH,
                                      width: width * sixteenPixelRatioW,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: lightAss,
                                      ),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * thirtyTwoPixelRatioH,
                  ),
                  Container(
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: width * sixteenPixelRatioW),
                      child: const Text(
                        'I want to complete....',
                        style: TextStyle(fontSize: 14, color: dividerColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * fivePixelRatioH,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: lightAss,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: height * thirtyFivePixelRatioH,
                          width: width,
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: width * sixteenPixelRatioW,
                                left: width * sixteenPixelRatioW),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: const Text(
                                    'Daily Task Goal',
                                    style: sixteenAssTextStyle,
                                  ),
                                ),
                                Container(
                                  child: const Text(
                                    '5',
                                    style: sixteenAssTextStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Divider(
                          height: 1,
                          color: dividerColor,
                        ),
                        Container(
                          height: height * thirtyFivePixelRatioH,
                          width: width,
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: width * sixteenPixelRatioW,
                                left: width * sixteenPixelRatioW),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: const Text(
                                    'Weekly Task Goal',
                                    style: sixteenAssTextStyle,
                                  ),
                                ),
                                Container(
                                  child: const Text(
                                    '10',
                                    style: sixteenAssTextStyle,
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
                  Container(
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: width * sixteenPixelRatioW),
                      child: const Text(
                        'Days OFF',
                        style: TextStyle(fontSize: 14, color: dividerColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * fivePixelRatioH,
                  ),
                  Container(
                    height: height * fortyPixelRatioH,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: lightAss,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [

                          SingleLetterInContainer(
                          boxColor: lightAss,
                          day: 'M',
                          textColor: dividerColor,
                          topRight: 0,
                          topLeft: 16,
                          bottomRight: 0,
                          bottomLeft: 16,
                        ),
                        // Container(
                        //   height: height * fortyPixelRatioH,
                        //   width: 0.5,
                        //   color: lightAss,
                        // ),
                          SingleLetterInContainer(
                          boxColor: lightAss,
                          day: 'T',
                          textColor: dividerColor,
                          topRight: 0,
                          topLeft: 0,
                          bottomRight: 0,
                          bottomLeft: 0,
                        ),

                          SingleLetterInContainer(
                          boxColor: lightAss,
                          day: 'W',
                          textColor: dividerColor,
                          topRight: 0,
                          topLeft: 0,
                          bottomRight: 0,
                          bottomLeft: 0,
                        ),

                          SingleLetterInContainer(
                          boxColor: lightAss,
                          day: 'T',
                          textColor: dividerColor,
                          topRight: 0,
                          topLeft: 0,
                          bottomRight: 0,
                          bottomLeft: 0,
                        ),

                          SingleLetterInContainer(
                          boxColor: lightAss,
                          day: 'F',
                          textColor: dividerColor,
                          topRight: 0,
                          topLeft: 0,
                          bottomRight: 0,
                          bottomLeft: 0,
                        ),

                          SingleLetterInContainer(
                          boxColor: lightAss,
                          day: 'S',
                          textColor: dividerColor,
                          topRight: 0,
                          topLeft: 0,
                          bottomRight: 0,
                          bottomLeft: 0,
                        ),

                         SingleLetterInContainer(
                          boxColor: red,
                          day: 'S',
                          textColor: white,
                          topRight: 16,
                          topLeft: 0,
                          bottomRight: 16,
                          bottomLeft: 0,
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * fivePixelRatioH,
                  ),
                  Container(
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: width * sixteenPixelRatioW),
                      child: const Text(
                        'Daily task goal streaks are paused on your days off',
                        style: TextStyle(fontSize: 14, color: dividerColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * thirtyTwoPixelRatioH,
                  ),
                  Container(
                    height: height * thirtyFivePixelRatioH,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
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
                          Container(
                            child: const Text(
                              'Vacation Mode',
                              style: sixteenAssTextStyle,
                            ),
                          ),
                          Container(
                            child: Stack(
                              children: [
                                Container(
                                  height: height * twentyPixelRatioH,
                                  width: width * thirtyFivePixelRatioW,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: dividerColor,
                                  ),
                                ),
                                Positioned(
                                    top: 2,
                                    left: 2,
                                    child: Container(
                                      height: height * sixteenPixelRatioH,
                                      width: width * sixteenPixelRatioW,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: lightAss,
                                      ),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * fivePixelRatioH,
                  ),
                  Container(
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: width * sixteenPixelRatioW),
                      child: const Text(
                        'When turned on, your streaks and karma will remain intact \neven if you don\'t achieve your goals.',
                        style: TextStyle(fontSize: 14, color: dividerColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: height * fiftyPixelRatioW,
                        width: width * ninetyPixelRatioH,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                              color: red,
                            ),
                            Container(
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
                          ],
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
                    Container(
                      height: height * fiftyPixelRatioW,
                      width: width * ninetyPixelRatioH,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: width * sixteenPixelRatioH,
                  left: width * sixteenPixelRatioH),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(
                    height: height * sixteenPixelRatioW,
                  ),
                  Container(
                    height: height * thirtyFivePixelRatioW,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
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
                          Container(
                            child: const Text(
                              'Use karma',
                              style: sixteenAssTextStyle,
                            ),
                          ),
                          Container(
                            child: Stack(
                              children: [
                                Container(
                                  height: height * twentyPixelRatioW,
                                  width: width * thirtyFivePixelRatioH,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: green,
                                  ),
                                ),
                                Positioned(
                                    top: 2,
                                    right: 2,
                                    child: Container(
                                      height: height * sixteenPixelRatioW,
                                      width: width * sixteenPixelRatioH,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: lightAss,
                                      ),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * thirtyTwoPixelRatioW,
                  ),
                  Container(
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: width * sixteenPixelRatioH),
                      child: const Text(
                        'I want to complete....',
                        style: TextStyle(fontSize: 14, color: dividerColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * fivePixelRatioW,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: lightAss,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: height * thirtyFivePixelRatioW,
                          width: width,
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: width * sixteenPixelRatioH,
                                left: width * sixteenPixelRatioH),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: const Text(
                                    'Daily Task Goal',
                                    style: sixteenAssTextStyle,
                                  ),
                                ),
                                Container(
                                  child: const Text(
                                    '5',
                                    style: sixteenAssTextStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Divider(
                          height: 1,
                          color: dividerColor,
                        ),
                        Container(
                          height: height * thirtyFivePixelRatioW,
                          width: width,
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: width * sixteenPixelRatioH,
                                left: width * sixteenPixelRatioH),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: const Text(
                                    'Weekly Task Goal',
                                    style: sixteenAssTextStyle,
                                  ),
                                ),
                                Container(
                                  child: const Text(
                                    '10',
                                    style: sixteenAssTextStyle,
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
                    height: height * thirtyTwoPixelRatioW,
                  ),
                  Container(
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: width * sixteenPixelRatioH),
                      child: const Text(
                        'Days OFF',
                        style: TextStyle(fontSize: 14, color: dividerColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * fivePixelRatioW,
                  ),
                  Container(
                    height: height * fortyPixelRatioW,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: lightAss,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [

                         SingleLetterInContainer(
                          boxColor: lightAss,
                          day: 'M',
                          textColor: dividerColor,
                          topRight: 0,
                          topLeft: 16,
                          bottomRight: 0,
                          bottomLeft: 16,
                        ),

                          SingleLetterInContainer(
                          boxColor: lightAss,
                          day: 'T',
                          textColor: dividerColor,
                          topRight: 0,
                          topLeft: 0,
                          bottomRight: 0,
                          bottomLeft: 0,
                        ),

                          SingleLetterInContainer(
                          boxColor: lightAss,
                          day: 'W',
                          textColor: dividerColor,
                          topRight: 0,
                          topLeft: 0,
                          bottomRight: 0,
                          bottomLeft: 0,
                        ),

                          SingleLetterInContainer(
                          boxColor: lightAss,
                          day: 'T',
                          textColor: dividerColor,
                          topRight: 0,
                          topLeft: 0,
                          bottomRight: 0,
                          bottomLeft: 0,
                        ),

                          SingleLetterInContainer(
                          boxColor: lightAss,
                          day: 'F',
                          textColor: dividerColor,
                          topRight: 0,
                          topLeft: 0,
                          bottomRight: 0,
                          bottomLeft: 0,
                        ),

                          SingleLetterInContainer(
                          boxColor: red,
                          day: 'S',
                          textColor: dividerColor,
                          topRight: 0,
                          topLeft: 0,
                          bottomRight: 0,
                          bottomLeft: 0,
                        ),

                          SingleLetterInContainer(
                          boxColor: red,
                          day: 'S',
                          textColor: white,
                          topRight: 16,
                          topLeft: 0,
                          bottomRight: 16,
                          bottomLeft: 0,
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * fivePixelRatioW,
                  ),
                  Container(
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: width * sixteenPixelRatioW),
                      child: const Text(
                        'Daily task goal streaks are paused on your days off',
                        style: TextStyle(fontSize: 14, color: dividerColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * thirtyTwoPixelRatioW,
                  ),
                  Container(
                    height: height * thirtyFivePixelRatioW,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
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
                          Container(
                            child: const Text(
                              'Vacation Mode',
                              style: sixteenAssTextStyle,
                            ),
                          ),
                          Container(
                            child: Stack(
                              children: [
                                Container(
                                  height: height * twentyPixelRatioW,
                                  width: width * thirtyFivePixelRatioH,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: dividerColor,
                                  ),
                                ),
                                Positioned(
                                    top: 2,
                                    left: 2,
                                    child: Container(
                                      height: height * sixteenPixelRatioW,
                                      width: width * sixteenPixelRatioH,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: lightAss,
                                      ),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * fivePixelRatioW,
                  ),
                  Container(
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: width * sixteenPixelRatioH),
                      child: const Text(
                        'When turned on, your streaks and karma will remain intact \neven if you don\'t achieve your goals.',
                        style: TextStyle(fontSize: 14, color: dividerColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      }
    });
  }
}
