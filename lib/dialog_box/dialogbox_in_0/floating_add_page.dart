import 'package:flutter/material.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';
import 'package:to_do_list/inbox_page.dart';

class FloatingAddShowDialog extends StatefulWidget {
  const FloatingAddShowDialog({Key? key}) : super(key: key);

  @override
  _FloatingAddShowDialogState createState() => _FloatingAddShowDialogState();
}

class _FloatingAddShowDialogState extends State<FloatingAddShowDialog> {

  // TextEditingController planTitleFromTextField = TextEditingController();
  // TextEditingController descriptionFromTextField = TextEditingController();

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
                top: height * 0.72,
                child: Container(
                  // height: 495,
                  height: height * 0.28,
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
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height * thirtyPixelRatioH,
                            width: width,
                            child: TextFormField(
                                controller: planTitleFromTextField,
                                decoration: const InputDecoration(
                                  hintText: 'e.g. Note down your plan',
                                  hintStyle: TextStyle(
                                    color: dividerColor,
                                    fontSize: 14,
                                  ),
                                  border: InputBorder.none,
                                )),
                          ),
                          SizedBox(
                            height: height * thirtyPixelRatioH,
                            width: width,
                            child: TextFormField(
                                controller: descriptionFromTextField,
                                decoration: const InputDecoration(
                                  hintText: 'Description',
                                  hintStyle: TextStyle(
                                    color: dividerColor,
                                    fontSize: 14,
                                  ),
                                  border: InputBorder.none,
                                )),
                          ),
                          SizedBox(
                            height: height * thirtyTwoPixelRatioH,
                          ),
                          Container(
                            height: height * thirtyPixelRatioH,
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: height * thirtyPixelRatioH,
                                  width: width * oneTwentyFivePixelRatioW,
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
                                                  Icons.date_range,
                                                  size: 15,
                                                  color: dividerColor,
                                                )),
                                          ),
                                          SizedBox(
                                            height: height * sixteenPixelRatioW,
                                          ),
                                          const Text(
                                            'No data',
                                            style: sixteenAssTextStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width * eightPixelRatioW,
                                ),
                                Container(
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
                              ],
                            ),
                          ),
                          Container(
                            height: height * thirtyPixelRatioH,
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: height * thirtyPixelRatioH,
                                  width: width * oneFiftyPixelRatioW,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.money,
                                                size: 15, color: dividerColor)),
                                      ),
                                      SizedBox(
                                        height: height * sixteenPixelRatioW,
                                      ),
                                      Container(
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.flag,
                                                size: 15, color: dividerColor)),
                                      ),
                                      SizedBox(
                                        height: height * sixteenPixelRatioW,
                                      ),
                                      Container(
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.alarm,
                                                size: 15, color: dividerColor)),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => InboxClass(
                                                    planTitleFromTextField:
                                                        planTitleFromTextField
                                                            .toString(),
                                                    descriptionFromTextField:
                                                        descriptionFromTextField
                                                            .toString(),
                                                  )));
                                      Navigator.pop(context);
                                      print('plantitle from float but $planTitleFromTextField');
                                      print('description from float but $descriptionFromTextField');
                                    });
                                  },
                                  child: Container(
                                    height: height * twentyPixelRatioH,
                                    width: width * twentyPixelRatioW,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: red,
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.arrow_drop_up,
                                        size: 8,
                                        color: white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
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
                top: height * 0.72,
                child: Container(
                  // height: 495,
                  height: height * 0.28,
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
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: height * thirtyPixelRatioW,
                            width: width,
                            child: TextFormField(
                              controller: planTitleFromTextField,
                                decoration: const InputDecoration(
                              hintText: 'e.g. Note down your plan',
                              hintStyle: TextStyle(
                                color: dividerColor,
                                fontSize: 14,
                              ),
                              border: InputBorder.none,
                            )),
                          ),
                          SizedBox(
                            height: height * thirtyPixelRatioW,
                            width: width,
                            child: TextFormField(
                              controller: descriptionFromTextField,
                                decoration: const InputDecoration(
                              hintText: 'Description',
                              hintStyle: TextStyle(
                                color: dividerColor,
                                fontSize: 14,
                              ),
                              border: InputBorder.none,
                            )),
                          ),
                          SizedBox(
                            height: height * thirtyTwoPixelRatioW,
                          ),
                          Container(
                            height: height * thirtyPixelRatioW,
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: height * thirtyPixelRatioW,
                                  width: width * oneTwentyFivePixelRatioH,
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
                                                  Icons.date_range,
                                                  size: 15,
                                                  color: dividerColor,
                                                )),
                                          ),
                                          SizedBox(
                                            height: height * sixteenPixelRatioH,
                                          ),
                                          const Text(
                                            'No data',
                                            style: sixteenAssTextStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width * eightPixelRatioH,
                                ),
                                Container(
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
                                            height: height * sixteenPixelRatioH,
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
                              ],
                            ),
                          ),
                          Container(
                            height: height * thirtyPixelRatioW,
                            width: width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: height * thirtyPixelRatioW,
                                  width: width * oneFiftyPixelRatioH,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.money,
                                                size: 15, color: dividerColor)),
                                      ),
                                      SizedBox(
                                        height: height * sixteenPixelRatioH,
                                      ),
                                      Container(
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.flag,
                                                size: 15, color: dividerColor)),
                                      ),
                                      SizedBox(
                                        height: height * sixteenPixelRatioH,
                                      ),
                                      Container(
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.alarm,
                                                size: 15, color: dividerColor)),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => InboxClass(
                                                planTitleFromTextField:
                                                planTitleFromTextField
                                                    .toString(),
                                                descriptionFromTextField:
                                                descriptionFromTextField
                                                    .toString(),
                                              )));
                                      Navigator.pop(context);

                                    });
                                  },
                                  child: Container(
                                    height: height * twentyPixelRatioW,
                                    width: width * twentyPixelRatioH,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: red,
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.arrow_drop_up,
                                        size: 8,
                                        color: white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
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
