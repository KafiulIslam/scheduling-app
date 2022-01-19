import 'package:flutter/material.dart';
import 'package:to_do_list/common/common_classes.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';

class NewProjectShowDialogPortrait extends StatefulWidget {
  const NewProjectShowDialogPortrait({Key? key}) : super(key: key);

  @override
  _NewProjectShowDialogPortraitState createState() =>
      _NewProjectShowDialogPortraitState();
}

class _NewProjectShowDialogPortraitState
    extends State<NewProjectShowDialogPortrait> {
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
                // color: Color(0xFFD8DCE1),
                color: deepAss,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                // color: white,
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          left: width * sixteenPixelRatioW,
                          right: width * sixteenPixelRatioW),
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
                              child: const FittedBox(
                                fit: BoxFit.contain,
                                child: Center(
                                  child: Text(
                                    'Cancel',
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
                                  'New Project',
                                  style: eighteenBlackTextStyle,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: const FittedBox(
                              fit: BoxFit.contain,
                              child: Center(
                                child: Text(
                                  'done',
                                  style: TextStyle(
                                      fontSize: 18, color: dividerColor),
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
                  SizedBox(
                    height: height * sixteenPixelRatioH,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioW,
                        left: width * sixteenPixelRatioW),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: lightAss,
                        ),
                        height: height * ninetyPixelRatioH,
                        width: width,
                        child: Column(
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
                                      left: width * sixteenPixelRatioW,
                                      right: width * sixteenPixelRatioW),
                                  child: TextFormField(
                                    initialValue: 'Name your project',
                                    style: hintTextStyle,
                                  ),
                                )),
                            // const Divider(
                            //   height: 1,
                            //   color: deepAss,
                            // ),
                            Container(
                              height: height * thirtyFivePixelRatioH,
                              width: width,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                                color: lightAss,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: height * thirtyFivePixelRatioH,
                                    width: width * oneEightyFivePixelRatioW,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.border_color,
                                            size: 20,
                                            color: dividerColor,
                                          ),
                                        ),
                                        Container(
                                          width:
                                              width * oneTwentyFivePixelRatioW,
                                          child: const Text(
                                            'Color',
                                            textAlign: TextAlign.start,
                                            style: eighteenBlackTextStyle,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: height * thirtyFivePixelRatioH,
                                    width: width * seventyPixelRatioW,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: height * twentyPixelRatioH,
                                          width: width * twentyPixelRatioW,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: dividerColor,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: assSixteenForwardIcon,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: height * sixteenPixelRatioH,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioW,
                        left: width * sixteenPixelRatioW),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: lightAss,
                        ),
                        height: height * ninetyFivePixelRatioH,
                        width: width,
                        child: Column(
                          children: [
                            Container(
                              height: height * thirtyPixelRatioH,
                              width: width,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                ),
                                color: lightAss,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: height * thirtyPixelRatioH,
                                    width: width * oneEightyFivePixelRatioW,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.person,
                                            size: 20,
                                            color: dividerColor,
                                          ),
                                        ),
                                        Container(
                                          width:
                                              width * oneTwentyFivePixelRatioW,
                                          child: const Text(
                                            'Shared',
                                            textAlign: TextAlign.start,
                                            style: eighteenBlackTextStyle,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: height * thirtyPixelRatioH,
                                    width: width * seventyFivePixelRatioW,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                            child: const FittedBox(
                                                fit: BoxFit.contain,
                                                child: Text(
                                                  'No',
                                                  style: sixteenAssTextStyle,
                                                ))),
                                        IconButton(
                                          onPressed: () {},
                                          icon: assSixteenForwardIcon,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * sixtyPixelRatioW),
                              child: const Divider(
                                height: 1,
                                color: dividerColor,
                              ),
                            ),
                            Container(
                              height: height * thirtyPixelRatioH,
                              width: width,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                ),
                                color: lightAss,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: height * thirtyPixelRatioH,
                                    width: width * oneEightyFivePixelRatioW,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.person,
                                            size: 20,
                                            color: dividerColor,
                                          ),
                                        ),
                                        Container(
                                          width:
                                              width * oneTwentyFivePixelRatioW,
                                          child: const Text(
                                            'Parent Project',
                                            textAlign: TextAlign.start,
                                            style: eighteenBlackTextStyle,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: height * thirtyPixelRatioH,
                                    width: width * oneTwentyFivePixelRatioW,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                            child: const FittedBox(
                                                fit: BoxFit.contain,
                                                child: Text(
                                                  'No Parent',
                                                  style: sixteenAssTextStyle,
                                                ))),
                                        IconButton(
                                          onPressed: () {},
                                          icon: assSixteenForwardIcon,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * sixtyPixelRatioW),
                              child: const Divider(
                                height: 1,
                                color: dividerColor,
                              ),
                            ),
                            Container(
                              height: height * thirtyPixelRatioH,
                              width: width,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                                color: lightAss,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    right: width * sixteenPixelRatioW),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: height * thirtyFivePixelRatioH,
                                      width: width * oneEightyFivePixelRatioW,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.person,
                                              size: 20,
                                              color: dividerColor,
                                            ),
                                          ),
                                          Container(
                                            width: width *
                                                oneTwentyFivePixelRatioW,
                                            child: const Text(
                                              'Favourite',
                                              textAlign: TextAlign.start,
                                              style: eighteenBlackTextStyle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: height * thirtyPixelRatioH,
                                      width: width * eightyPixelRatioW,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: height * thirtyPixelRatioH,
                                            width: width * thirtyPixelRatioW,
                                          ),
                                          Container(
                                            child: Stack(
                                              children: [
                                                Container(
                                                  height: height *
                                                      twentyPixelRatioH,
                                                  width: width *
                                                      thirtyFivePixelRatioW,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                    color: dividerColor,
                                                  ),
                                                ),
                                                Positioned(
                                                    top: 2,
                                                    left: 2,
                                                    child: Container(
                                                      height: height *
                                                          sixteenPixelRatioH,
                                                      width: width *
                                                          sixteenPixelRatioW,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        color: lightAss,
                                                      ),
                                                    ))
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
                        )),
                  ),
                  SizedBox(
                    height: height * thirtyTwoPixelRatioH,
                  ),
                  Padding(
                    padding:   EdgeInsets.only(left:  width * sixteenPixelRatioW,bottom: height * eightPixelRatioH),
                    child: Container(
                        child: const Text(
                      'View',
                      style: TextStyle(color: dividerColor, fontSize: 14),
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioW,
                        left: width * sixteenPixelRatioW),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: lightAss,
                        ),
                        height: height * twoHundredPixelRatioH,
                        width: width,
                        child: Row(
                          mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                          children: const [
                             ClassWithImageTextButtonPortrait(image: "images/listone.png", text: 'List'),
                              ClassWithImageTextButtonPortrait(image: "images/listtwo.png", text: 'Board'),


                          ],
                        )),
                  ),
                  SizedBox(
                    height: height * sixteenPixelRatioH,
                  ),
                  Padding(
                    padding:   EdgeInsets. only(left: width * sixteenPixelRatioW, right: width * sixteenPixelRatioW),
                    child: Container(
                      height: height * thirtyPixelRatioH,
                      width: width,
                      child: const  FittedBox(
                          fit:  BoxFit.contain,
                          child:   Text('Choose how tasks should be displayed.\nView options are shared between users',style: tenAssTextStyle,)),
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





class NewProjectShowDialogLandscape extends StatefulWidget {
  const NewProjectShowDialogLandscape({Key? key}) : super(key: key);

  @override
  _NewProjectShowDialogLandscapeState createState() => _NewProjectShowDialogLandscapeState();
}

class _NewProjectShowDialogLandscapeState extends State<NewProjectShowDialogLandscape> {
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
                // color: Color(0xFFD8DCE1),
                color: deepAss,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                // color: white,
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          left: width * sixteenPixelRatioH,
                          right: width * sixteenPixelRatioH),
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
                              child: const FittedBox(
                                fit: BoxFit.contain,
                                child: Center(
                                  child: Text(
                                    'Cancel',
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
                                  'New Project',
                                  style: eighteenBlackTextStyle,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: const FittedBox(
                              fit: BoxFit.contain,
                              child: Center(
                                child: Text(
                                  'done',
                                  style: TextStyle(
                                      fontSize: 18, color: dividerColor),
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
                  SizedBox(
                    height: height * sixteenPixelRatioW,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioH,
                        left: width * sixteenPixelRatioH),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: lightAss,
                        ),
                        height: height * ninetyPixelRatioW,
                        width: width,
                        child: Column(
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
                                      left: width * sixteenPixelRatioH,
                                      right: width * sixteenPixelRatioH),
                                  child: TextFormField(

                                   decoration: const InputDecoration(
                                     hintText: 'Name your project',
                                     hintStyle: TextStyle(fontSize: 14,color: dividerColor,),
                                     border: InputBorder.none,
                                   ),
                                  ),
                                )),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * sixtyPixelRatioH),
                              child: const Divider(
                                height: 1,
                                color: dividerColor,
                              ),
                            ),
                            Container(
                              height: height * thirtyFivePixelRatioW,
                              width: width,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                                color: lightAss,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: height * thirtyFivePixelRatioW,
                                    width: width * oneEightyFivePixelRatioH,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.border_color,
                                            size: 20,
                                            color: dividerColor,
                                          ),
                                        ),
                                        Container(
                                          width:
                                          width * oneTwentyFivePixelRatioH,
                                          child: const Text(
                                            'Color',
                                            textAlign: TextAlign.start,
                                            style: eighteenBlackTextStyle,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: height * thirtyFivePixelRatioW,
                                    width: width * seventyPixelRatioH,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: height * twentyPixelRatioW,
                                          width: width * twentyPixelRatioH,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(100),
                                            color: dividerColor,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: assSixteenForwardIcon,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: height * sixteenPixelRatioW,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioH,
                        left: width * sixteenPixelRatioH),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: lightAss,
                        ),
                        height: height * ninetyFivePixelRatioW,
                        width: width,
                        child: Column(
                          children: [
                            Container(
                              height: height * thirtyPixelRatioW,
                              width: width,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                ),
                                color: lightAss,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: height * thirtyPixelRatioW,
                                    width: width * oneEightyFivePixelRatioH,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.person,
                                            size: 20,
                                            color: dividerColor,
                                          ),
                                        ),
                                        Container(
                                          width:
                                          width * oneTwentyFivePixelRatioH,
                                          child: const Text(
                                            'Shared',
                                            textAlign: TextAlign.start,
                                            style: eighteenBlackTextStyle,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: height * thirtyPixelRatioW,
                                    width: width * seventyFivePixelRatioH,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                            child: const FittedBox(
                                                fit: BoxFit.contain,
                                                child: Text(
                                                  'No',
                                                  style: sixteenAssTextStyle,
                                                ))),
                                        IconButton(
                                          onPressed: () {},
                                          icon: assSixteenForwardIcon,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * sixtyPixelRatioH),
                              child: const Divider(
                                height: 1,
                                color: dividerColor,
                              ),
                            ),
                            Container(
                              height: height * thirtyPixelRatioW,
                              width: width,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                ),
                                color: lightAss,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: height * thirtyPixelRatioW,
                                    width: width * oneEightyFivePixelRatioH,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.person,
                                            size: 20,
                                            color: dividerColor,
                                          ),
                                        ),
                                        Container(
                                          width:
                                          width * oneTwentyFivePixelRatioH,
                                          child: const Text(
                                            'Parent Project',
                                            textAlign: TextAlign.start,
                                            style: eighteenBlackTextStyle,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: height * thirtyPixelRatioW,
                                    width: width * oneTwentyFivePixelRatioH,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                            child: const FittedBox(
                                                fit: BoxFit.contain,
                                                child: Text(
                                                  'No Parent',
                                                  style: sixteenAssTextStyle,
                                                ))),
                                        IconButton(
                                          onPressed: () {},
                                          icon: assSixteenForwardIcon,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * sixtyPixelRatioH),
                              child: const Divider(
                                height: 1,
                                color: dividerColor,
                              ),
                            ),
                            Container(
                              height: height * thirtyPixelRatioW,
                              width: width,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                                color: lightAss,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    right: width * sixteenPixelRatioH),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: height * thirtyFivePixelRatioW,
                                      width: width * oneEightyFivePixelRatioH,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.person,
                                              size: 20,
                                              color: dividerColor,
                                            ),
                                          ),
                                          Container(
                                            width: width *
                                                oneTwentyFivePixelRatioH,
                                            child: const Text(
                                              'Favourite',
                                              textAlign: TextAlign.start,
                                              style: eighteenBlackTextStyle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: height * thirtyPixelRatioW,
                                      width: width * eightyPixelRatioH,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: height * thirtyPixelRatioW,
                                            width: width * thirtyPixelRatioH,
                                          ),
                                          Container(
                                            child: Stack(
                                              children: [
                                                Container(
                                                  height: height *
                                                      twentyPixelRatioW,
                                                  width: width *
                                                      thirtyFivePixelRatioH,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        16),
                                                    color: dividerColor,
                                                  ),
                                                ),
                                                Positioned(
                                                    top: 2,
                                                    left: 2,
                                                    child: Container(
                                                      height: height *
                                                          sixteenPixelRatioW,
                                                      width: width *
                                                          sixteenPixelRatioH,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(100),
                                                        color: lightAss,
                                                      ),
                                                    ))
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
                        )),
                  ),
                  SizedBox(
                    height: height * thirtyTwoPixelRatioW,
                  ),
                  Padding(
                    padding:   EdgeInsets.only(left:  width * sixteenPixelRatioH,bottom: height * eightPixelRatioW),
                    child: Container(
                        child: const Text(
                          'View',
                          style: TextStyle(color: dividerColor, fontSize: 14),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioH,
                        left: width * sixteenPixelRatioH),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: lightAss,
                        ),
                        height: height * twoHundredPixelRatioW,
                        width: width,
                        child: Row(
                          mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                          children: const [
                            ClassWithImageTextButtonLandscape(image: "images/listone.png", text: 'List'),
                            ClassWithImageTextButtonLandscape(image: "images/listtwo.png", text: 'Board'),


                          ],
                        )),
                  ),
                  SizedBox(
                    height: height * sixteenPixelRatioW,
                  ),
                  Padding(
                    padding:   EdgeInsets. only(left: width * sixteenPixelRatioH, right: width * sixteenPixelRatioH),
                    child: Container(
                      height: height * thirtyPixelRatioW,
                      width: width,
                      child: const  FittedBox(
                          fit:  BoxFit.contain,
                          child:   Text('Choose how tasks should be displayed.\nView options are shared between users',style: tenAssTextStyle,)),
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
