import 'package:flutter/material.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';

class MenuShowDialog extends StatefulWidget {
  const MenuShowDialog({Key? key}) : super(key: key);

  @override
  _MenuShowDialogState createState() => _MenuShowDialogState();
}

class _MenuShowDialogState extends State<MenuShowDialog> {


  List<int> checkList = [1, 2, 3, 4];

  int checkMark = 0;

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
                        width: width * sixtyPixelRatioW,
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
                    SizedBox(
                      width: width * thirtyTwoPixelRatioW,
                    ),
                    Container(
                      child: const FittedBox(
                        fit: BoxFit.contain,
                        child: Center(
                          child: Text(
                            'Activity : All Projects',
                            style: TextStyle(fontSize: 18, color: black),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * sixteenPixelRatioW,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: height * fiftyPixelRatioH,
                        width: width * fiftyPixelRatioW,
                        child: const Center(
                            child: Text(
                          'Apply',
                          style: TextStyle(fontSize: 18, color: red),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(height: 1, color: dividerColor),
            Padding(
              padding: EdgeInsets.only(
                left: width * sixteenPixelRatioW,
                right: width * sixteenPixelRatioW,
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        checkMark = 1;
                      });
                    },
                    child: Container(
                        height: height * thirtyFivePixelRatioH,
                        width: width,

                        child: Padding(
                          padding:
                              EdgeInsets.only(right: width * eightPixelRatioW),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'All Projects',
                                style: sixteenBlackTextStyle,
                              ),
                              Container(
                                height: height * thirtyPixelRatioH,
                                width: width * thirtyPixelRatioW,
                                child: Center(
                                    child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.check,
                                    size: 25,
                                    color: checkMark == 1 ? red : transparent,
                                  ),
                                )),
                              ),
                            ],
                          ),
                        )),
                  ),
                  const Divider(height: 1, color: dividerColor),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        checkMark = 2;
                      });
                    },
                    child: Container(
                      height: height * thirtyFivePixelRatioH,
                      width: width,

                      child: Padding(
                        padding: EdgeInsets.only(right: width * eightPixelRatioW),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: height * thirtyFivePixelRatioH,
                              width: width * ninetyPixelRatioW,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: height * thirtyFivePixelRatioH,
                                    width: width * twentyFivePixelRatioW,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10)),
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
                                      height: height * thirtyFivePixelRatioH,
                                      width: width * sixtyPixelRatioW,
                                      child: const Center(
                                        child: Text(
                                          'Inbox',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: black,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              height: height * thirtyPixelRatioH,
                              width: width * thirtyPixelRatioW,
                              child: Center(
                                  child: IconButton(
                                onPressed: () {},
                                icon:   Icon(
                                  Icons.check,
                                  size: 25,
                                  color: checkMark == 2 ? red : transparent,
                                ),
                              )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioW),
                    child: const Divider(height: 1, color: dividerColor),
                  ),
                  GestureDetector(

                    onTap: () {
                      setState(() {
                        checkMark = 3;
                      });
                    },
                    child: Container(
                      height: height * thirtyPixelRatioH,
                      width: width,

                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * sixteenPixelRatioW,
                            right: width * eightPixelRatioW),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: height * thirtyPixelRatioH,
                              width: width * oneFiftyPixelRatioW,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: height * eightPixelRatioH,
                                    width: width * eightPixelRatioW,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
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
                              child: Center(
                                  child: IconButton(
                                onPressed: () {},
                                icon:   Icon(
                                  Icons.check,
                                  size: 25,
                                  color: checkMark == 3 ? red : transparent,
                                ),
                              )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioW),
                    child: const Divider(height: 1, color: dividerColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        checkMark = 4;
                      });
                    },
                    child: Container(
                      height: height * thirtyPixelRatioH,
                      width: width,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * sixteenPixelRatioW,
                            right: width * eightPixelRatioW),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: height * thirtyPixelRatioH,
                              width: width * oneFiftyPixelRatioW,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: height * eightPixelRatioH,
                                    width: width * eightPixelRatioW,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: dividerColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * eightPixelRatioW,
                                  ),
                                  Container(
                                    child: const Text(
                                      "Try Board",
                                      style: sixteenAssTextStyle,
                                    ),
                                  ),
                                  Container(
                                    height: height * eightPixelRatioH,
                                    width: width * eightPixelRatioW,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: height * thirtyPixelRatioH,
                              width: width * thirtyPixelRatioW,
                              child: Center(
                                  child: IconButton(
                                onPressed: () {},
                                icon:   Icon(
                                  Icons.check,
                                  size: 25,
                                  color: checkMark == 4 ? red : transparent,
                                ),
                              )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
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
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: height * fiftyPixelRatioW,
                        width: width * sixtyPixelRatioH,
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
                    SizedBox(
                      width: width * thirtyTwoPixelRatioH,
                    ),
                    Container(
                      child: const FittedBox(
                        fit: BoxFit.contain,
                        child: Center(
                          child: Text(
                            'Activity : All Projects',
                            style: TextStyle(fontSize: 18, color: black),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * sixteenPixelRatioH,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: height * fiftyPixelRatioW,
                        width: width * fiftyPixelRatioH,
                        child: const Center(
                            child: Text(
                              'Apply',
                              style: TextStyle(fontSize: 18, color: red),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(height: 1, color: dividerColor),
            Padding(
              padding: EdgeInsets.only(
                left: width * sixteenPixelRatioH,
                right: width * sixteenPixelRatioH,
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        checkMark = 1;
                      });
                    },
                    child: Container(
                        height: height * thirtyFivePixelRatioW,
                        width: width,

                        child: Padding(
                          padding:
                          EdgeInsets.only(right: width * eightPixelRatioH),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'All Projects',
                                style: sixteenBlackTextStyle,
                              ),
                              Container(
                                height: height * thirtyPixelRatioW,
                                width: width * thirtyPixelRatioH,
                                child: Center(
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.check,
                                        size: 25,
                                        color: checkMark == 1 ? red : transparent,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        )),
                  ),
                  const Divider(height: 1, color: dividerColor),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        checkMark = 2;
                      });
                    },
                    child: Container(
                      height: height * thirtyFivePixelRatioW,
                      width: width,

                      child: Padding(
                        padding: EdgeInsets.only(right: width * eightPixelRatioH),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: height * thirtyFivePixelRatioW,
                              width: width * ninetyPixelRatioH,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: height * thirtyFivePixelRatioW,
                                    width: width * twentyFivePixelRatioH,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10)),
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
                                      height: height * thirtyFivePixelRatioW,
                                      width: width * sixtyPixelRatioH,
                                      child: const Center(
                                        child: Text(
                                          'Inbox',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: black,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              height: height * thirtyPixelRatioW,
                              width: width * thirtyPixelRatioH,
                              child: Center(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon:   Icon(
                                      Icons.check,
                                      size: 25,
                                      color: checkMark == 2 ? red : transparent,
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioH),
                    child: const Divider(height: 1, color: dividerColor),
                  ),
                  GestureDetector(

                    onTap: () {
                      setState(() {
                        checkMark = 3;
                      });
                    },
                    child: Container(
                      height: height * thirtyPixelRatioW,
                      width: width,

                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * sixteenPixelRatioH,
                            right: width * eightPixelRatioH),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: height * thirtyPixelRatioW,
                              width: width * oneFiftyPixelRatioH,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: height * eightPixelRatioW,
                                    width: width * eightPixelRatioH,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
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
                              child: Center(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon:   Icon(
                                      Icons.check,
                                      size: 25,
                                      color: checkMark == 3 ? red : transparent,
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioH),
                    child: const Divider(height: 1, color: dividerColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        checkMark = 4;
                      });
                    },
                    child: Container(
                      height: height * thirtyPixelRatioW,
                      width: width,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * sixteenPixelRatioH,
                            right: width * eightPixelRatioH),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: height * thirtyPixelRatioW,
                              width: width * oneFiftyPixelRatioH,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: height * eightPixelRatioW,
                                    width: width * eightPixelRatioH,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: dividerColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * eightPixelRatioH,
                                  ),
                                  Container(
                                    child: const Text(
                                      "Try Board",
                                      style: sixteenAssTextStyle,
                                    ),
                                  ),
                                  Container(
                                    height: height * eightPixelRatioW,
                                    width: width * eightPixelRatioH,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: height * thirtyPixelRatioW,
                              width: width * thirtyPixelRatioH,
                              child: Center(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon:   Icon(
                                      Icons.check,
                                      size: 25,
                                      color: checkMark == 4 ? red : transparent,
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      }
    });
  }
}
