import 'package:flutter/material.dart';
import 'package:to_do_list/back_button_page/back_button_interface.dart';
import 'package:to_do_list/back_button_page/search_page.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/menu_box_show_dialog.dart';

class CommonClassWithIconTextNumber extends StatefulWidget {
  const CommonClassWithIconTextNumber({
    Key? key,
    required this.height,
    required this.widthOne,
    required this.widthTwo,
    required this.widthThree,
    required this.widthFour,
    required this.icon,
    required this.text,
    required this.number,
  }) : super(key: key);
  final double height; //35 pixel
  final double widthOne;
  final double widthTwo;
  final double widthThree;
  final double widthFour;
  final IconData icon;
  final String text;
  final String number;

  @override
  _CommonClassWithIconTextNumberState createState() =>
      _CommonClassWithIconTextNumberState();
}

class _CommonClassWithIconTextNumberState
    extends State<CommonClassWithIconTextNumber> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * widget.height,
      width: width,
      decoration: BoxDecoration(
        color: white.withOpacity(0.1),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        border: Border.all(color: white.withOpacity(0.1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: height * widget.height,
            width: width * widget.widthOne,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: height * widget.height,
                  width: width * widget.widthTwo,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10)),
                    // color:  Colors.white.withOpacity(0.2),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        widget.icon,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                    height: height * widget.height,
                    width: width * widget.widthThree,
                    child: Center(
                      child: Text(
                        widget.text,
                        style: const TextStyle(
                          fontSize: 18,
                          color: white,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Container(
              height: height * widget.height,
              width: width * widget.widthFour,
              child: Center(
                child: Text(
                  widget.number,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class TextWithTwoSymbol extends StatefulWidget {
  const TextWithTwoSymbol(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  _TextWithTwoSymbolState createState() => _TextWithTwoSymbolState();
}

class _TextWithTwoSymbolState extends State<TextWithTwoSymbol> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * thirtyPixelRatioH,
      width: width,
      child: Padding(
        padding: EdgeInsets.only(
            left: width * twelvePixelRatioW, right: width * twelvePixelRatioW),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height * thirtyFivePixelRatioH,
              width: width * seventyPixelRatioW,
              child: Text(
                widget.text,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              height: height * thirtyFivePixelRatioH,
              width: width * seventyPixelRatioW,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: height * thirtyFivePixelRatioH,
                    width: width * twentyFivePixelRatioW,
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(10)),
                      // color:  Colors.white.withOpacity(0.2),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 16,
                          color: ass,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height * thirtyFivePixelRatioH,
                    width: width * twentyFivePixelRatioW,
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(10)),
                      // color:  Colors.white.withOpacity(0.2),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: widget.onPressed,
                        icon: const Icon(
                          Icons.add,
                          size: 20,
                          color: ass,
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
    );
  }
}

class IconTitleIconPortraitClass extends StatefulWidget {
  const IconTitleIconPortraitClass(
      {Key? key, required this.icon, required this.title})
      : super(key: key);

  final IconData icon;
  final String title;

  @override
  _IconTitleIconPortraitClassState createState() =>
      _IconTitleIconPortraitClassState();
}

class _IconTitleIconPortraitClassState
    extends State<IconTitleIconPortraitClass> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * thirtyFivePixelRatioH,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFFD8DCE1),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            right: width * twoPixelRatioW, left: width * twoPixelRatioW),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height * thirtyFivePixelRatioH,
              width: width * thirtyFivePixelRatioW,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                // color: lightAss,
              ),
              child: FittedBox(
                fit: BoxFit.contain,
                child: Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          widget.icon,
                          size: 25,
                          color: red,
                        ))),
              ),
            ),
            Container(
              height: height * twentyFivePixelRatioH,
              width: width * twoHundredPixelRatioW,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                // color:  const Color(0xFFD8DCE1) ,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: height * twentyPixelRatioH,
                    child: FittedBox(
                        fit: BoxFit.contain,
                        child: Center(
                          child: Text(
                            widget.title,
                            style: sixteenAssTextStyle,
                          ),
                        )),
                  ),
                  Container(
                    height: twentyPixelRatioH,
                    width: width * twoPixelRatioW,
                  )
                ],
              ),
            ),
            SizedBox(
              width: width * eightyPixelRatioW,
            ),
            Container(
                child: FittedBox(
                    fit: BoxFit.contain,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: ass,
                        ))))
          ],
        ),
      ),
    );
  }
}

class IconTitleIconLandscapeClass extends StatefulWidget {
  const IconTitleIconLandscapeClass(
      {Key? key, required this.icon, required this.title})
      : super(key: key);

  final IconData icon;
  final String title;

  @override
  _IconTitleIconLandscapeClassState createState() =>
      _IconTitleIconLandscapeClassState();
}

class _IconTitleIconLandscapeClassState
    extends State<IconTitleIconLandscapeClass> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * thirtyFivePixelRatioW,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFFD8DCE1),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            right: width * twoPixelRatioH, left: width * twoPixelRatioH),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height * thirtyFivePixelRatioW,
              width: width * thirtyFivePixelRatioH,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
// color: lightAss,
              ),
              child: FittedBox(
                fit: BoxFit.contain,
                child: Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          widget.icon,
                          size: 25,
                          color: red,
                        ))),
              ),
            ),
            Container(
              height: height * twentyFivePixelRatioW,
              width: width * twoHundredPixelRatioH,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
// color:  const Color(0xFFD8DCE1) ,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: height * twentyPixelRatioW,
                    child: FittedBox(
                        fit: BoxFit.contain,
                        child: Center(
                          child: Text(
                            widget.title,
                            style: sixteenAssTextStyle,
                          ),
                        )),
                  ),
                  Container(
                    height: twentyPixelRatioW,
                    width: width * twoPixelRatioH,
                  )
                ],
              ),
            ),
            SizedBox(
              width: width * threeHundredPixelRatioH,
            ),
            Container(
                child: FittedBox(
                    fit: BoxFit.contain,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: ass,
                        ))))
          ],
        ),
      ),
    );
  }
}

class AppBarWithIconTitleTwoIconPortrait extends StatefulWidget {
  const AppBarWithIconTitleTwoIconPortrait({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  _AppBarWithIconTitleTwoIconPortraitState createState() =>
      _AppBarWithIconTitleTwoIconPortraitState();
}

class _AppBarWithIconTitleTwoIconPortraitState
    extends State<AppBarWithIconTitleTwoIconPortrait> {
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

  _menuAlertDialog(BuildContext context) {
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
              child: widget.title == 'Inbox'
                  ? const MenuBoxShowDialogInboxPagePortrait()
                  : widget.title == "Today"
                      ? const MenuBoxShowDialogTodayPagePortrait()
                      : const MenuBoxShowDialogTodayPagePortrait(),
            );
          } else {
            return Align(
              alignment: Alignment.bottomCenter,
              child: widget.title == 'Inbox'
                  ? const MenuBoxShowDialogInboxPageLandscape()
                  : widget.title == "Today"
                      ? const MenuShowDialogTodayPageLandscape()
                      : const MenuShowDialogTodayPageLandscape(),
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

    return Container(
      color: red,
      height: height * fiftyPixelRatioH,
      width: width,
      child: Padding(
        padding: EdgeInsets.only(right: width * sixteenPixelRatioW),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height * fortyPixelRatioH,
              width: width * 0.0547619047619048,
              child: Center(
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        navigatorPopFromLeftSide(const BackButtonInterface());
                        // Navigator.push(context,MaterialPageRoute(builder: (context) => const BackButtonInterface()));
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 22,
                      color: white,
                    )),
              ),
            ),
            // const SizedBox(width: 3,),

            Container(
              height: height * fortyPixelRatioH,
              width: width * hundredPixelRatioW,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  widget.title,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 20,
                    color: white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(
              width: width * 0.2857142857142857,
            ),
            Container(
              height: height * fortyPixelRatioH,
              width: width * thirtyPixelRatioW,
              child: Center(
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchClass()));
                    });
                  },
                  icon: const Icon(
                    Icons.search,
                    size: 28,
                    color: white,
                  ),
                ),
              ),
            ),

            // SizedBox(width: width * 0.0071428571428571,),
            GestureDetector(
              onTap: () {
                setState(() {
                  _menuAlertDialog(context);
                });
              },
              child: Container(
                height: height * fortyPixelRatioH,
                width: width * thirtyPixelRatioW,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: height * sevenPixelRatioH,
                        width: width * sevenPixelRatioW,
                        decoration: BoxDecoration(
                          border: Border.all(color: white),
                          borderRadius: BorderRadius.circular(100),
                        )),
                    Container(
                        height: height * sevenPixelRatioH,
                        width: width * sevenPixelRatioW,
                        decoration: BoxDecoration(
                          border: Border.all(color: white),
                          borderRadius: BorderRadius.circular(100),
                        )),
                    Container(
                        height: height * sevenPixelRatioH,
                        width: width * sevenPixelRatioW,
                        decoration: BoxDecoration(
                          border: Border.all(color: white),
                          borderRadius: BorderRadius.circular(100),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AppBarWithIconTitleTwoIconLandscape extends StatefulWidget {
  const AppBarWithIconTitleTwoIconLandscape({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  _AppBarWithIconTitleTwoIconLandscapeState createState() =>
      _AppBarWithIconTitleTwoIconLandscapeState();
}

class _AppBarWithIconTitleTwoIconLandscapeState
    extends State<AppBarWithIconTitleTwoIconLandscape> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      color: red,
      height: height * fiftyPixelRatioW,
      width: width,
      child: Padding(
        padding: EdgeInsets.only(
            right: width * twentyFivePixelRatioH,
            left: width * sixteenPixelRatioH),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height * sixtyPixelRatioW,
              width: width * twentyFivePixelRatioH, // 0.0547619047619048,
              child: Center(
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const BackButtonInterface()));
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 22,
                      color: white,
                    )),
              ),
            ),
            // const SizedBox(width: 3,),

            Container(
              height: height * fiftyPixelRatioW,
              width: width * oneHundredPixelRatioH,
              child: Padding(
                padding: EdgeInsets.only(right: width * sevenPixelRatioH),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    widget.title,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 20,
                      color: white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              width: width * oneEightyFivePixelRatioH,
            ),
            Container(
              height: height * sixtyPixelRatioW,
              width: width * thirtyTwoPixelRatioH,
              child: Center(
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchClass()));
                    });
                  },
                  icon: const Icon(
                    Icons.search,
                    size: 28,
                    color: white,
                  ),
                ),
              ),
            ),

            SizedBox(width: width * 0.0015151515151515), // 1 / 660 pixel
            Container(
              // color: white.withOpacity(0.2),
              height: height * sixtyPixelRatioW,
              // width: width * thirtyPixelRatioW,
              width: width * thirtyFivePixelRatioH,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: height * sevenPixelRatioW,
                      width: width * sevenPixelRatioH,
                      decoration: BoxDecoration(
                        border: Border.all(color: white),
                        borderRadius: BorderRadius.circular(100),
                      )),
                  Container(
                      height: height * sevenPixelRatioW,
                      width: width * sevenPixelRatioH,
                      decoration: BoxDecoration(
                        border: Border.all(color: white),
                        borderRadius: BorderRadius.circular(100),
                      )),
                  Container(
                      height: height * sevenPixelRatioW,
                      width: width * sevenPixelRatioH,
                      decoration: BoxDecoration(
                        border: Border.all(color: white),
                        borderRadius: BorderRadius.circular(100),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SingleLetterClass extends StatefulWidget {
  const SingleLetterClass({Key? key, required this.letter}) : super(key: key);

  final String letter;

  @override
  _SingleLetterClassState createState() => _SingleLetterClassState();
}

class _SingleLetterClassState extends State<SingleLetterClass> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * twentyPixelRatioH,
      width: width * twentyPixelRatioW,
      child: FittedBox(
          fit: BoxFit.contain,
          child: Center(
              child: Text(
            widget.letter,
            style: TextStyle(
              fontSize: 16,
              color: ass,
            ),
          ))),
    );
  }
}

class DateClass extends StatefulWidget {
  const DateClass(
      {Key? key,
      required this.dateNumber,
      required this.month,
      required this.day})
      : super(key: key);

  final String dateNumber;
  final String month;
  final String day;

  @override
  _DateClassState createState() => _DateClassState();
}

class _DateClassState extends State<DateClass> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * fiftyPixelRatioH,
      width: width,
      decoration: const BoxDecoration(
          border: Border(
        top: BorderSide(width: 1.0, color: dividerColor),
        bottom:
            BorderSide(width: 1.0, color: dividerColor), //color : Colors.ass
      )),
      child: Padding(
        padding: EdgeInsets.only(
            top: height * twentyPixelRatioH, left: height * eightPixelRatioW),
        child: Container(
          child: Text(
            "${widget.dateNumber} ${widget.month} - ${widget.day}",
            textAlign: TextAlign.start,
            style: const TextStyle(
                fontSize: 18, color: ass, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class DemoCalender extends StatefulWidget {
  const DemoCalender({Key? key}) : super(key: key);

  @override
  _DemoCalenderState createState() => _DemoCalenderState();
}

class _DemoCalenderState extends State<DemoCalender> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Column(
      children: [
        Container(
          height: height * fivePixelRatioH,
          width: width * thirtyPixelRatioW,
          color: deepAss,
        ),
        Container(
          height: height * fiftyPixelRatioW,
          width: width,
          decoration: const BoxDecoration(
            color: Color(0xFFD8DCE1),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: width * sixteenPixelRatioH,
              right: width * sixteenPixelRatioH,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // height: height * twentyFivePixelRatioW,
                  // width: width * twentyFivePixelRatioH,
                  child: const Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 18,
                      color: red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: const FittedBox(
                    fit: BoxFit.contain,
                    child: Center(
                      child: Text(
                        'Select a date',
                        style: TextStyle(
                            fontSize: 18,
                            color: black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
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
        SfCalendar(
          view: CalendarView.month,
          cellBorderColor: dividerColor,
          backgroundColor: lightAss,
          headerHeight: height * twentyPixelRatioH,

          // backgroundColor: red.withOpacity(0.2),
        ),
      ],
    ));
  }
}

class ClassWithImageTextButtonPortrait extends StatefulWidget {
  const ClassWithImageTextButtonPortrait({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  final String image;
  final String text;

  @override
  _ClassWithImageTextButtonPortraitState createState() =>
      _ClassWithImageTextButtonPortraitState();
}

class _ClassWithImageTextButtonPortraitState
    extends State<ClassWithImageTextButtonPortrait> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            height: height * oneTwentyPixelRatioH,
            width: width * hundredPixelRatioW,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: height * fivePixelRatioH,
          ),
          Container(
            child: Text(
              widget.text,
              style: eighteenBlackTextStyle,
            ),
          ),
          SizedBox(
            height: height * fivePixelRatioH,
          ),
          Container(
            height: height * sixteenPixelRatioH,
            width: width * sixteenPixelRatioW,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: dividerColor),
            ),
          )
        ],
      ),
    );
  }
}

class ClassWithImageTextButtonLandscape extends StatefulWidget {
  const ClassWithImageTextButtonLandscape(
      {Key? key, required this.image, required this.text})
      : super(key: key);

  final String image;
  final String text;

  @override
  _ClassWithImageTextButtonLandscapeState createState() =>
      _ClassWithImageTextButtonLandscapeState();
}

class _ClassWithImageTextButtonLandscapeState
    extends State<ClassWithImageTextButtonLandscape> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            height: height * oneTwentyPixelRatioW,
            width: width * oneHundredPixelRatioH,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: height * fivePixelRatioW,
          ),
          Container(
            child: Text(
              widget.text,
              style: eighteenBlackTextStyle,
            ),
          ),
          SizedBox(
            height: height * fivePixelRatioW,
          ),
          Container(
            height: height * sixteenPixelRatioW,
            width: width * sixteenPixelRatioH,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: dividerColor),
            ),
          )
        ],
      ),
    );
  }
}

class ClassWithIconAndTitle extends StatefulWidget {
  const ClassWithIconAndTitle(
      {Key? key, required this.icon, required this.title})
      : super(key: key);

  final IconData icon;
  final String title;

  @override
  _ClassWithIconAndTitleState createState() => _ClassWithIconAndTitleState();
}

class _ClassWithIconAndTitleState extends State<ClassWithIconAndTitle> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return OrientationBuilder(builder: (_, orientation) {
      if (orientation == Orientation.portrait) {
        return Container(
          height: height * thirtyFivePixelRatioH,
          width: width * width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    widget.icon,
                    size: 25,
                    color: dividerColor,
                  )),
              Container(
                height: height * thirtyFivePixelRatioH,
                width: width * threeHundredPixelRatioW,
                child: Padding(
                  padding: EdgeInsets.only(top: height * eightPixelRatioH),
                  child: Text(
                    widget.title,
                    textAlign: TextAlign.start,
                    style: sixteenBlackTextStyle,
                  ),
                ),
              ),
              SizedBox(
                width: width * sixteenPixelRatioW,
              ),
              Container(
                height: height * thirtyPixelRatioH,
                width: width * thirtyPixelRatioW,
              )
            ],
          ),
        );
      } else {
        return Container(
          height: height * thirtyFivePixelRatioW,
          width: width * width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    widget.icon,
                    size: 25,
                    color: dividerColor,
                  )),
              Container(
                height: height * thirtyFivePixelRatioW,
                width: width * threeHundredPixelRatioH,
                child: Padding(
                  padding: EdgeInsets.only(top: height * eightPixelRatioW),
                  child: Text(
                    widget.title,
                    textAlign: TextAlign.start,
                    style: sixteenBlackTextStyle,
                  ),
                ),
              ),
              SizedBox(
                width: width * sixteenPixelRatioH,
              ),
              Container(
                height: height * thirtyPixelRatioW,
                width: width * thirtyPixelRatioH,
              )
            ],
          ),
        );
      }
    });
  }
}

class CancelButton extends StatefulWidget {
  const CancelButton({Key? key}) : super(key: key);

  @override
  _CancelButtonState createState() => _CancelButtonState();
}

class _CancelButtonState extends State<CancelButton> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return OrientationBuilder(builder: (_, orientation) {
      if (orientation == Orientation.portrait) {
        return Padding(
          padding: EdgeInsets.only(
              left: width * eightPixelRatioW, right: width * eightPixelRatioW),
          child: GestureDetector(
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Container(
              height: height * thirtyFivePixelRatioH,
              width: width * width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: lightAss,
              ),
              child: const Center(
                  child: Text(
                'Cancel',
                textAlign: TextAlign.start,
                style: eighteenBlackTextStyle,
              )),
            ),
          ),
        );
      } else {
        return Padding(
          padding: EdgeInsets.only(
              left: width * eightPixelRatioH, right: width * eightPixelRatioH),
          child: GestureDetector(
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Container(
              height: height * thirtyFivePixelRatioW,
              width: width * width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: lightAss,
              ),
              child: const Center(
                  child: Text(
                'Cancel',
                textAlign: TextAlign.start,
                style: eighteenBlackTextStyle,
              )),
            ),
          ),
        );
      }
    });
  }
}

class CustomShowGeneralDialog extends StatefulWidget {
  const CustomShowGeneralDialog({Key? key}) : super(key: key);

  @override
  _CustomShowGeneralDialogState createState() =>
      _CustomShowGeneralDialogState();
}

class _CustomShowGeneralDialogState extends State<CustomShowGeneralDialog> {
  createAlertDialog(BuildContext context, Widget showDialogPortrait,
      Widget showDialogLandscape) {
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
              child: showDialogPortrait,
            );
          } else {
            return Align(
              alignment: Alignment.bottomCenter,
              child: showDialogPortrait,
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
    return Container();
  }
}

class ShowDialogBackground extends StatefulWidget {
  const ShowDialogBackground(
      {Key? key, required this.inputColumn, required this.backColor})
      : super(key: key);

  final Widget inputColumn;
  final Color backColor;

  @override
  _ShowDialogBackgroundState createState() => _ShowDialogBackgroundState();
}

class _ShowDialogBackgroundState extends State<ShowDialogBackground> {
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

              decoration: BoxDecoration(
                // color: Color(0xFFD8DCE1),
                color: widget.backColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                // color: white,
              ),

              child: widget.inputColumn,

              // height: MediaQuery.of(context).size.height,

              // color: Colors.white,
            ))
      ]),
    );
  }
}

class SingleLetterInContainer extends StatefulWidget {


  final Color boxColor;
  final String day;
  final Color textColor;
  final double topRight;
  final double topLeft;
  final double bottomRight;
  final double bottomLeft;


  const SingleLetterInContainer({
    Key? key,
    required this.boxColor,
    required this.day,
    required this.textColor,
    required this.topRight,
    required this.topLeft,
    required this.bottomRight,
    required this.bottomLeft,
  }) : super(key: key);



  @override
  _SingleLetterInContainerState createState() =>
      _SingleLetterInContainerState();
}

class _SingleLetterInContainerState extends State<SingleLetterInContainer> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return OrientationBuilder(builder: (_, orientation) {
      if (orientation == Orientation.portrait) {
        return Container(
          height: height * fortyPixelRatioH,
          width: width * fiftyFivePixelRatioW,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(widget.topRight),
              topLeft: Radius.circular(widget.topLeft),
              bottomRight: Radius.circular(widget.bottomRight),
              bottomLeft: Radius.circular(widget.bottomLeft),
            ),
            color: widget.boxColor,
          ),
          child: Center(
            child: Text(
              widget.day,
              style: TextStyle(color: widget.textColor, fontSize: 16),
            ),
          ),
        );
      } else {
        return Container(
          height: height * fortyPixelRatioW,
          width: width * fiftyFivePixelRatioH,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(widget.topRight),
              topLeft: Radius.circular(widget.topLeft),
              bottomRight: Radius.circular(widget.bottomRight),
              bottomLeft: Radius.circular(widget.bottomLeft),
            ),
            color: widget.boxColor,
          ),
          child: Center(
            child: Text(
              widget.day,
              style: TextStyle(color: widget.textColor, fontSize: 16),
            ),
          ),
        );
      }
    });
  }
}

class DailYWeeklyKarmaButton extends StatefulWidget {
  const DailYWeeklyKarmaButton(
      {Key? key, required this.buttonName, required this.buttonColor})
      : super(key: key);

  final String buttonName;
  final Color buttonColor;

  @override
  _DailYWeeklyKarmaButtonState createState() => _DailYWeeklyKarmaButtonState();
}

class _DailYWeeklyKarmaButtonState extends State<DailYWeeklyKarmaButton> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * thirtyTwoPixelRatioH,
      width: width * oneTwentyPixelRatioW,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: widget.buttonColor,
      ),
      child: Center(
          child: Text(
        widget.buttonName,
        style: sixteenBlackTextStyle,
      )),
    );
  }
}

class DotWithDate extends StatefulWidget {
  const DotWithDate({Key? key, required this.date}) : super(key: key);

  final String date;
  @override
  _DotWithDateState createState() => _DotWithDateState();
}

class _DotWithDateState extends State<DotWithDate> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * thirtyFivePixelRatioH,
      width: width * thirtyPixelRatioW,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: height * twelvePixelRatioH,
              width: width * twelvePixelRatioW,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: red,
              )),
          Text(
            widget.date,
            style: const TextStyle(fontSize: 12, color: dividerColor),
          )
        ],
      ),
    );
  }
}

class ContentInAccordion extends StatefulWidget {
  const ContentInAccordion(
      {Key? key, required this.title, required this.number})
      : super(key: key);

  final String title;
  final String number;

  @override
  _ContentInAccordionState createState() => _ContentInAccordionState();
}

class _ContentInAccordionState extends State<ContentInAccordion> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return OrientationBuilder(builder: (_, orientation) {
      if (orientation == Orientation.portrait) {
        return Container(
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
                        child: Text(
                          widget.title,
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
                      child: Text(widget.number, style: sixteenAssTextStyle)),
                )
              ],
            ),
          ),
        );
      } else {
        return Container(
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
                        child: Text(
                          widget.title,
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
                      child: Text(widget.number, style: sixteenAssTextStyle)),
                )
              ],
            ),
          ),
        );
      }
    });
  }
}

class DetailsForDailyButton extends StatefulWidget {
  const DetailsForDailyButton({Key? key}) : super(key: key);

  @override
  _DetailsForDailyButtonState createState() => _DetailsForDailyButtonState();
}

class _DetailsForDailyButtonState extends State<DetailsForDailyButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return OrientationBuilder(builder: (_, orientation) {
      if (orientation == Orientation.portrait) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ).animate(_animationController),
          child: FadeTransition(
            opacity: _animationController,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioW,
                        left: width * sixteenPixelRatioW),
                    child: Container(
                        height: height * oneTwentyPixelRatioH,
                        width: width,
                        child: Column(
                          children: [
                            Container(
                              height: height * thirtyFivePixelRatioH,
                              width: width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Center(
                                      child: Text(
                                    'Daily',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: ass,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  Container(
                                    height: height * thirtyTwoPixelRatioH,
                                    width: width * sixtyPixelRatioW,
                                  )
                                ],
                              ),
                            ),
                            Container(
                                height: height * eightyPixelRatioH,
                                width: width,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
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
                                                '0/5 tasks',
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
                                                'Just take it one task at a time',
                                                textAlign: TextAlign.start,
                                                style: sixteenAssTextStyle,
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * sevenPixelRatioH,
                                            ),
                                            Container(
                                              child: const Text(
                                                'Edit goals',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 18, color: red),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * oneHundredEightPixelRatioH,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          height: height * sixtyPixelRatioH,
                                          width: width * sixtyPixelRatioW,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            border: Border.all(
                                                color: ass.withOpacity(0.5),
                                                width: width * fivePixelRatioW),
                                          ),
                                        ),
                                        Positioned(
                                            child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.watch_later_outlined,
                                            size: 45,
                                            color: ass,
                                          ),
                                        ))
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioW),
                    child: const Divider(
                      height: 1,
                      color: deepAss,
                    ),
                  ),
                  Container(
                    height: height * eightyPixelRatioH,
                    width: width,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: width * sixteenPixelRatioW,
                          right: width * sixteenPixelRatioW),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: const Text(
                              'Daily Streak',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 18, color: ass),
                            ),
                          ),
                          SizedBox(
                            height: height * fivePixelRatioH,
                          ),
                          Container(
                            child: const Text(
                              '0 days',
                              textAlign: TextAlign.start,
                              style: sixteenAssTextStyle,
                            ),
                          ),
                          SizedBox(
                            height: height * sevenPixelRatioH,
                          ),
                          Container(
                            child: const Text(
                              'Longest : 0 days ( 10 Nov 2021 - 9 Nov 2021 )',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 14, color: ass),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioW),
                    child: const Divider(
                      height: 1,
                      color: deepAss,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioW),
                    child: Container(
                      height: height * thirtyFivePixelRatioH,
                      width: width,
                      child: const Text(
                        'Completed in the last 7 days',
                        style: sixteenAssTextStyle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * fivePixelRatioW,
                  ),
                  Container(
                    height: height * oneSixtyFivePixelRatioH,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: width * sixteenPixelRatioW,
                          right: width * sixteenPixelRatioW),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: const Text(
                                  'Sat - 0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  'Sun - 0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  'Mon - 0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  'Tue - 0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  'Wed - 0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  'Thurs - 0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  'Fri - 0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: height * oneFiftyPixelRatioH,
                            width: 2,
                            color: ass,
                          ),
                          SizedBox(
                            width: width * sixteenPixelRatioW,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      } else {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ).animate(_animationController),
          child: FadeTransition(
            opacity: _animationController,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioH,
                        left: width * sixteenPixelRatioH),
                    child: Container(
                        height: height * oneTwentyPixelRatioW,
                        width: width,
                        child: Column(
                          children: [
                            Container(
                              height: height * thirtyFivePixelRatioW,
                              width: width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Center(
                                      child: Text(
                                    'Daily',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: ass,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  Container(
                                    height: height * thirtyTwoPixelRatioW,
                                    width: width * sixtyPixelRatioH,
                                  )
                                ],
                              ),
                            ),
                            Container(
                                height: height * eightyPixelRatioW,
                                width: width,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
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
                                                '0/5 tasks',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * fivePixelRatioW,
                                            ),
                                            Container(
                                              child: const Text(
                                                'Just take it one task at a time',
                                                textAlign: TextAlign.start,
                                                style: sixteenAssTextStyle,
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * sevenPixelRatioW,
                                            ),
                                            Container(
                                              child: const Text(
                                                'Edit goals',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 18, color: red),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * oneHundredEightPixelRatioW,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          height: height * sixtyPixelRatioW,
                                          width: width * sixtyPixelRatioH,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            border: Border.all(
                                                color: ass.withOpacity(0.5),
                                                width: width * fivePixelRatioH),
                                          ),
                                        ),
                                        Positioned(
                                            child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.watch_later_outlined,
                                            size: 45,
                                            color: ass,
                                          ),
                                        ))
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioH),
                    child: const Divider(
                      height: 1,
                      color: deepAss,
                    ),
                  ),
                  Container(
                    height: height * eightyPixelRatioW,
                    width: width,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: width * sixteenPixelRatioH,
                          right: width * sixteenPixelRatioH),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: const Text(
                              'Daily Streak',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 18, color: ass),
                            ),
                          ),
                          SizedBox(
                            height: height * fivePixelRatioW,
                          ),
                          Container(
                            child: const Text(
                              '0 days',
                              textAlign: TextAlign.start,
                              style: sixteenAssTextStyle,
                            ),
                          ),
                          SizedBox(
                            height: height * sevenPixelRatioW,
                          ),
                          Container(
                            child: const Text(
                              'Longest : 0 days ( 10 Nov 2021 - 9 Nov 2021 )',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 14, color: ass),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioH),
                    child: const Divider(
                      height: 1,
                      color: deepAss,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioH),
                    child: Container(
                      height: height * thirtyFivePixelRatioW,
                      width: width,
                      child: const Text(
                        'Completed in the last 7 days',
                        style: sixteenAssTextStyle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * fivePixelRatioW,
                  ),
                  Container(
                    height: height * oneSixtyFivePixelRatioW,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: width * sixteenPixelRatioH,
                          right: width * sixteenPixelRatioH),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: const Text(
                                  'Sat - 0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  'Sun - 0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  'Mon - 0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  'Tue - 0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  'Wed - 0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  'Thurs - 0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  'Fri - 0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: height * oneFiftyPixelRatioW,
                            width: 2,
                            color: ass,
                          ),
                          SizedBox(
                            width: width * sixteenPixelRatioH,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }
    });
  }
}

class DetailsForWeeklyButton extends StatefulWidget {
  const DetailsForWeeklyButton({Key? key}) : super(key: key);

  @override
  _DetailsForWeeklyButtonState createState() => _DetailsForWeeklyButtonState();
}

class _DetailsForWeeklyButtonState extends State<DetailsForWeeklyButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return OrientationBuilder(builder: (_, orientation) {
      if (orientation == Orientation.portrait) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ).animate(_animationController),
          child: FadeTransition(
            opacity: _animationController,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioW,
                        left: width * sixteenPixelRatioW),
                    child: Container(
                        height: height * oneTwentyFivePixelRatioH,
                        width: width,
                        child: Column(
                          children: [
                            Container(
                              height: height * thirtyPixelRatioH,
                              width: width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Center(
                                      child: Text(
                                    'Weekly Goal',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: ass,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  Container(
                                    height: height * thirtyTwoPixelRatioH,
                                    width: width * sixtyPixelRatioW,
                                  )
                                ],
                              ),
                            ),
                            Container(
                                height: height * eightyFivePixelRatioH,
                                width: width,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: const Text(
                                                '0/30 tasks',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            // SizedBox(
                                            //   height: height * fivePixelRatioH,
                                            // ),
                                            Container(
                                              child: const Text(
                                                'Starting is the hardest part.\nyou have got this.',
                                                textAlign: TextAlign.start,
                                                style: sixteenAssTextStyle,
                                              ),
                                            ),

                                            Container(
                                              child: const Text(
                                                'Edit goals',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 18, color: red),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * oneHundredEightPixelRatioH,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          height: height * sixtyPixelRatioH,
                                          width: width * sixtyPixelRatioW,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            border: Border.all(
                                                color: ass.withOpacity(0.5),
                                                width: width * fivePixelRatioW),
                                          ),
                                        ),
                                        Positioned(
                                            child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.star_border_outlined,
                                            size: 45,
                                            color: ass,
                                          ),
                                        ))
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioW),
                    child: const Divider(
                      height: 1,
                      color: deepAss,
                    ),
                  ),
                  Container(
                    height: height * eightyPixelRatioH,
                    width: width,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: width * sixteenPixelRatioW,
                          right: width * sixteenPixelRatioW),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: const Text(
                              'Weekly Streak',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 18, color: ass),
                            ),
                          ),
                          SizedBox(
                            height: height * fivePixelRatioH,
                          ),
                          Container(
                            child: const Text(
                              '0 weeks',
                              textAlign: TextAlign.start,
                              style: sixteenAssTextStyle,
                            ),
                          ),
                          SizedBox(
                            height: height * sevenPixelRatioH,
                          ),
                          Container(
                            child: const Text(
                              'Longest : 0 weeks ( 13 Dec 2021 - 13 Dec 2021 )',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 14, color: ass),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioW),
                    child: const Divider(
                      height: 1,
                      color: deepAss,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioW),
                    child: Container(
                      height: height * thirtyFivePixelRatioH,
                      width: width,
                      child: const Text(
                        'Completed in the last 4 weeks',
                        style: sixteenAssTextStyle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * fivePixelRatioW,
                  ),
                  Container(
                    height: height * oneSixtyFivePixelRatioH,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: width * sixteenPixelRatioW,
                          right: width * sixteenPixelRatioW),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: const Text(
                                  '0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  '0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  '0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  '0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  '0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  '0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  '0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: height * oneFiftyPixelRatioH,
                            width: 2,
                            color: ass,
                          ),
                          SizedBox(
                            width: width * sixteenPixelRatioW,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      } else {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ).animate(_animationController),
          child: FadeTransition(
            opacity: _animationController,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioH,
                        left: width * sixteenPixelRatioH),
                    child: Container(
                        height: height * oneTwentyFivePixelRatioW,
                        width: width,
                        child: Column(
                          children: [
                            Container(
                              height: height * thirtyPixelRatioW,
                              width: width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Center(
                                      child: Text(
                                    'Weekly Goal',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: ass,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  Container(
                                    height: height * thirtyTwoPixelRatioW,
                                    width: width * sixtyPixelRatioH,
                                  )
                                ],
                              ),
                            ),
                            Container(
                                height: height * eightyFivePixelRatioW,
                                width: width,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: const Text(
                                                '0/30 tasks',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            // SizedBox(
                                            //   height: height * fivePixelRatioH,
                                            // ),
                                            Container(
                                              child: const Text(
                                                'Starting is the hardest part.\nyou have got this.',
                                                textAlign: TextAlign.start,
                                                style: sixteenAssTextStyle,
                                              ),
                                            ),

                                            Container(
                                              child: const Text(
                                                'Edit goals',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 18, color: red),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * oneHundredEightPixelRatioH,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          height: height * sixtyPixelRatioW,
                                          width: width * sixtyPixelRatioH,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            border: Border.all(
                                                color: ass.withOpacity(0.5),
                                                width: width * fivePixelRatioH),
                                          ),
                                        ),
                                        Positioned(
                                            child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.star_border_outlined,
                                            size: 45,
                                            color: ass,
                                          ),
                                        ))
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioH),
                    child: const Divider(
                      height: 1,
                      color: deepAss,
                    ),
                  ),
                  Container(
                    height: height * eightyPixelRatioW,
                    width: width,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: width * sixteenPixelRatioH,
                          right: width * sixteenPixelRatioH),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: const Text(
                              'Weekly Streak',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 18, color: ass),
                            ),
                          ),
                          SizedBox(
                            height: height * fivePixelRatioW,
                          ),
                          Container(
                            child: const Text(
                              '0 weeks',
                              textAlign: TextAlign.start,
                              style: sixteenAssTextStyle,
                            ),
                          ),
                          SizedBox(
                            height: height * sevenPixelRatioW,
                          ),
                          Container(
                            child: const Text(
                              'Longest : 0 weeks ( 13 Dec 2021 - 13 Dec 2021 )',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 14, color: ass),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioH),
                    child: const Divider(
                      height: 1,
                      color: deepAss,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioH),
                    child: Container(
                      height: height * thirtyFivePixelRatioW,
                      width: width,
                      child: const Text(
                        'Completed in the last 4 weeks',
                        style: sixteenAssTextStyle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * fivePixelRatioW,
                  ),
                  Container(
                    height: height * oneSixtyFivePixelRatioH,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: width * sixteenPixelRatioH,
                          right: width * sixteenPixelRatioH),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: const Text(
                                  '0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  '0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  '0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  '0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  '0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  '0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  '0',
                                  style: fourteenAssTextStyle,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: height * oneFiftyPixelRatioW,
                            width: 2,
                            color: ass,
                          ),
                          SizedBox(
                            width: width * sixteenPixelRatioH,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }
    });
  }
}

class DetailsForKarmaButton extends StatefulWidget {
  const DetailsForKarmaButton({Key? key}) : super(key: key);

  @override
  _DetailsForKarmaButtonState createState() => _DetailsForKarmaButtonState();
}

class _DetailsForKarmaButtonState extends State<DetailsForKarmaButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return OrientationBuilder(builder: (_, orientation) {
      if (orientation == Orientation.portrait) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ).animate(_animationController),
          child: FadeTransition(
            opacity: _animationController,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioW,
                        left: width * sixteenPixelRatioW),
                    child: Container(
                        height: height * oneTwentyFivePixelRatioH,
                        width: width,
                        child: Column(
                          children: [
                            Container(
                              height: height * thirtyPixelRatioH,
                              width: width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: width * sixteenPixelRatioW),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Center(
                                        child: Text(
                                      'Karma Goal',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: ass,
                                          fontWeight: FontWeight.bold),
                                    )),
                                    Container(
                                      height: height * thirtyTwoPixelRatioH,
                                      width: width * sixtyPixelRatioW,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                                height: height * eightyFivePixelRatioH,
                                width: width,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: const Text(
                                                'Beginner (200)',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                '300 left to get to novice',
                                                textAlign: TextAlign.start,
                                                style: sixteenAssTextStyle,
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                'About karma levels',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 16, color: red),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * oneHundredEightPixelRatioH,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          height: height * sixtyPixelRatioH,
                                          width: width * sixtyPixelRatioW,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            border: Border.all(
                                                color: ass.withOpacity(0.5),
                                                width: width * fivePixelRatioW),
                                          ),
                                        ),
                                        Container(
                                          height: height * sixtyPixelRatioH,
                                          width: width * sixtyPixelRatioW,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            border: Border.all(
                                                color: red,
                                                width: width * fivePixelRatioW),
                                          ),
                                        ),
                                        Positioned(
                                            top: 8,
                                            left: 5,
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  Icons.add_location,
                                                  color: red,
                                                  size: 30),
                                            ))
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioW),
                    child: const Divider(
                      height: 1,
                      color: deepAss,
                    ),
                  ),
                  Container(
                    // height: height * oneHundredPixelRatioH,
                    width: width,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: width * sixteenPixelRatioW),
                          child: Container(
                            child: const Text(
                              'Karma trend',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 18, color: ass),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * oneTwentyPixelRatioH,
                        ),
                        Container(
                          // height: height * fiftyPixelRatioH,
                          width: width,
                          // color: lightGreen,
                          child: Center(
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 4,
                                      left: width * sixteenPixelRatioW,
                                      right: width * sixteenPixelRatioW),
                                  child: Container(
                                    height: height * fivePixelRatioH,
                                    width: width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: red,
                                    ),
                                  ),
                                ),

                                Positioned(
                                    child: Container(
                                  width: width,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      DotWithDate(
                                        date: 'Sun',
                                      ),
                                      DotWithDate(
                                        date: 'Mon',
                                      ),
                                      DotWithDate(
                                        date: 'Tues',
                                      ),
                                      DotWithDate(
                                        date: 'Wed',
                                      ),
                                      DotWithDate(
                                        date: 'Thus',
                                      ),
                                      DotWithDate(
                                        date: 'Fri',
                                      ),
                                      DotWithDate(
                                        date: 'Sat',
                                      ),
                                    ],
                                  ),
                                )),
                                // const  Positioned
                                //
                                //   (
                                //
                                //
                                //
                                //     child:   DotWithDate(date:  'Sun',)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * sixteenPixelRatioH,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioW),
                    child: const Divider(
                      height: 1,
                      color: deepAss,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      } else {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ).animate(_animationController),
          child: FadeTransition(
            opacity: _animationController,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: width * sixteenPixelRatioH,
                        left: width * sixteenPixelRatioH),
                    child: Container(
                        height: height * oneTwentyFivePixelRatioW,
                        width: width,
                        child: Column(
                          children: [
                            Container(
                              height: height * thirtyPixelRatioW,
                              width: width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Center(
                                      child: Text(
                                    'Karma Goal',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: ass,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  Container(
                                    height: height * thirtyTwoPixelRatioW,
                                    width: width * sixtyPixelRatioH,
                                  )
                                ],
                              ),
                            ),
                            Container(
                                height: height * eightyFivePixelRatioW,
                                width: width,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: const Text(
                                                'Beginner (200)',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                '300 left to get to novice',
                                                textAlign: TextAlign.start,
                                                style: sixteenAssTextStyle,
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                'About karma levels',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 16, color: red),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * oneHundredEightPixelRatioW,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          height: height * sixtyPixelRatioW,
                                          width: width * sixtyPixelRatioH,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            border: Border.all(
                                                color: ass.withOpacity(0.5),
                                                width: width * fivePixelRatioH),
                                          ),
                                        ),
                                        Container(
                                          height: height * sixtyPixelRatioW,
                                          width: width * sixtyPixelRatioH,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            border: Border.all(
                                                color: red,
                                                width: width * fivePixelRatioH),
                                          ),
                                        ),
                                        Positioned(
                                            top: 8,
                                            left: 5,
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  Icons.add_location,
                                                  color: red,
                                                  size: 30),
                                            ))
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioH),
                    child: const Divider(
                      height: 1,
                      color: deepAss,
                    ),
                  ),
                  Container(
                    // height: height * oneHundredPixelRatioH,
                    width: width,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: width * sixteenPixelRatioH),
                          child: Container(
                            child: const Text(
                              'Karma trend',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 18, color: ass),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * oneTwentyPixelRatioW,
                        ),
                        Container(
                          // height: height * fiftyPixelRatioH,
                          width: width,
                          // color: lightGreen,
                          child: Center(
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 4,
                                      left: width * sixteenPixelRatioH,
                                      right: width * sixteenPixelRatioH),
                                  child: Container(
                                    height: height * fivePixelRatioW,
                                    width: width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: red,
                                    ),
                                  ),
                                ),

                                Positioned(
                                    child: Container(
                                  width: width,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      DotWithDate(
                                        date: 'Sun',
                                      ),
                                      DotWithDate(
                                        date: 'Mon',
                                      ),
                                      DotWithDate(
                                        date: 'Tues',
                                      ),
                                      DotWithDate(
                                        date: 'Wed',
                                      ),
                                      DotWithDate(
                                        date: 'Thus',
                                      ),
                                      DotWithDate(
                                        date: 'Fri',
                                      ),
                                      DotWithDate(
                                        date: 'Sat',
                                      ),
                                    ],
                                  ),
                                )),
                                // const  Positioned
                                //
                                //   (
                                //
                                //
                                //
                                //     child:   DotWithDate(date:  'Sun',)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * sixteenPixelRatioW,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * sixteenPixelRatioH),
                    child: const Divider(
                      height: 1,
                      color: deepAss,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    });
  }
}

class CommonDivider extends StatefulWidget {
  const CommonDivider({Key? key, required this.leftPad}) : super(key: key);

  final double leftPad;

  @override
  _CommonDividerState createState() => _CommonDividerState();
}

class _CommonDividerState extends State<CommonDivider> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(left: width * widget.leftPad),
      child: const Divider(height: 1, color: dividerColor),
    );
  }
}

class TvIcon extends StatefulWidget {
  const TvIcon({Key? key}) : super(key: key);

  @override
  _TvIconState createState() => _TvIconState();
}

class _TvIconState extends State<TvIcon> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: crossCenter,
      children: [
        Container(
          height: height * twoPixelRatioH,
          width: width * twentyPixelRatioW,
          color: dividerColor,
        ),
        SizedBox(
          height: height * twoPixelRatioH,
        ),
        Container(
          height: height * sixteenPixelRatioH,
          width: width * twentyFivePixelRatioW,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                  color: dividerColor, width: width * twoPixelRatioW)),
        ),
        SizedBox(
          height: height * twoPixelRatioH,
        ),
        Container(
          height: height * twoPixelRatioH,
          width: width * twentyPixelRatioW,
          color: dividerColor,
        ),
      ],
    );
  }
}

class CustomMenuIcon extends StatefulWidget {
  const CustomMenuIcon({Key? key}) : super(key: key);

  @override
  _CustomMenuIconState createState() => _CustomMenuIconState();
}

class _CustomMenuIconState extends State<CustomMenuIcon> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * twentyPixelRatioH,
      width: width * twentyFivePixelRatioW,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: crossCenter,
        children: [
          Row(
            mainAxisAlignment: mainSpaceBetween,
            crossAxisAlignment: crossCenter,
            children: [
              Container(
                height: height * threePixelRatioH,
                width: width * threePixelRatioW,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: dividerColor,
                ),
              ),
              Container(
                height: height * twoPixelRatioH,
                width: width * sixteenPixelRatioW,
                color: dividerColor,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: mainSpaceBetween,
            crossAxisAlignment: crossCenter,
            children: [
              Container(
                height: height * threePixelRatioH,
                width: width * threePixelRatioW,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: dividerColor,
                ),
              ),
              Container(
                height: height * twoPixelRatioH,
                width: width * sixteenPixelRatioW,
                color: dividerColor,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: mainSpaceBetween,
            crossAxisAlignment: crossCenter,
            children: [
              Container(
                height: height * threePixelRatioH,
                width: width * threePixelRatioW,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: dividerColor,
                ),
              ),
              Container(
                height: height * twoPixelRatioH,
                width: width * sixteenPixelRatioW,
                color: dividerColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
