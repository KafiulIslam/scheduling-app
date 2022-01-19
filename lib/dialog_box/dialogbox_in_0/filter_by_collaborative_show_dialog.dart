import 'package:flutter/material.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';



class FilterByCollaborativeShowDialog extends StatefulWidget {




  final String appBarTitle;
  final Function changeSelection;

  //   String functionInCollaborate(String value){
  // return user = value;
  // }

 const FilterByCollaborativeShowDialog(
      {Key? key,   required this.appBarTitle, required this.changeSelection})
      : super(key: key);





  @override
  _FilterByCollaborativeShowDialogState createState() =>
      _FilterByCollaborativeShowDialogState();
}

class _FilterByCollaborativeShowDialogState
    extends State<FilterByCollaborativeShowDialog> {


  List<String> toggleList = ['Everyone', 'Me'];

  int marker = 0;

  @override
  void initState() {
    // TODO: implement initState
    widget.changeSelection(toggleList[marker]);
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
                    IconButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context, false);
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 25,
                        color: red,
                      ),
                    ),
                    Container(
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Center(
                          child: Text(
                            widget.appBarTitle,
                            style: const TextStyle(fontSize: 18, color: black),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: height * fiftyPixelRatioH,
                      width: width * fiftyPixelRatioW,
                      color: transparent,
                    ),
                  ],
                ),
              ),
            ),
            const Divider(height: 1, color: dividerColor),
            GestureDetector(
                onTap: () {
                  setState(() {
                    marker = 2;
                    marker == 2
                        ? widget.changeSelection(toggleList[0])
                        : widget.changeSelection(toggleList[1]);

                    Navigator.pop(context, true);



                  });
                },
                child: MenuBoxInFilterCollaborationDialog(
                  text1: toggleList[0],
                  iconColor: marker == 2 ? red : transparent,
                  iconCircleSizeHeight: thirtyPixelRatioH,
                  iconCircleSizeWidth: thirtyPixelRatioW,
                  borderColor: dividerColor,
                  fillColor: transparent,
                  icon: Icons.person,
                  permanentIconColor: dividerColor,
                  iconSize: 16,
                )),
            const Divider(height: 1, color: dividerColor),
            GestureDetector(
                onTap: () {
                  setState(() {
                    marker = 1;
                    marker == 1
                        ? widget.changeSelection(toggleList[1])
                        : widget.changeSelection(toggleList[0]) ;

                    Navigator.pop(context, true);
                  });
                },
                child: MenuBoxInFilterCollaborationDialog(
                  text1: toggleList[1],
                  iconColor: marker == 1 ? red : transparent,
                  iconCircleSizeHeight: thirtyPixelRatioH,
                  iconCircleSizeWidth: thirtyPixelRatioW,
                  borderColor: dividerColor,
                  fillColor: transparent,
                  icon: Icons.person,
                  permanentIconColor: dividerColor,
                  iconSize: 16,
                )),
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
            GestureDetector(
                onTap: () {
                  setState(() {
                    marker = 2;
                    marker == 2
                        ? widget.changeSelection(toggleList[0])
                        :widget.changeSelection(toggleList[1]) ;

                    Navigator.pop(context, true);

                  });
                },
                child: MenuBoxInFilterCollaborationDialog(
                  text1: toggleList[0],
                  iconColor: marker == 2 ? red : transparent,
                  iconCircleSizeHeight: thirtyPixelRatioH,
                 iconCircleSizeWidth: thirtyPixelRatioW,
                  borderColor: dividerColor,
                  fillColor: transparent,
                  icon: Icons.person,
                  permanentIconColor: dividerColor,
                  iconSize: 16,
                )),
            const Divider(height: 1, color: dividerColor),
            GestureDetector(
                onTap: () {
                  setState(() {
                    marker = 1;
                    marker == 1
                        ? widget.changeSelection(toggleList[1])
                        : widget.changeSelection(toggleList[0]) ;

                    Navigator.pop(context, true);
                  });
                },
                child: MenuBoxInFilterCollaborationDialog(
                  text1: toggleList[1],
                  iconColor: marker == 1 ? red : transparent,
                  iconCircleSizeHeight: thirtyPixelRatioH,
                  iconCircleSizeWidth: thirtyPixelRatioW,
                  borderColor: dividerColor,
                  fillColor: transparent,
                  icon: Icons.person,
                  permanentIconColor: dividerColor,
                  iconSize: 16,
                )),
          ],
        );
      }
    });
  }
}



class MenuBoxInFilterCollaborationDialog extends StatefulWidget {
  const MenuBoxInFilterCollaborationDialog(
      {Key? key,
      required this.text1,
      required this.iconColor,
      required this.fillColor,
      required this.iconCircleSizeHeight,
        required this.iconCircleSizeWidth,
      required this.borderColor,
      required this.icon,
        required this.iconSize,
        required this.permanentIconColor,
      })
      : super(key: key);


  final String text1;
  final Color iconColor;
  final double iconCircleSizeHeight;
  final double iconCircleSizeWidth;
  final Color borderColor;
  final Color fillColor;
  final IconData icon;
  final Color permanentIconColor;
  final double iconSize;


  @override
  _MenuBoxInFilterCollaborationDialogState createState() =>
      _MenuBoxInFilterCollaborationDialogState();
}

class _MenuBoxInFilterCollaborationDialogState
    extends State<MenuBoxInFilterCollaborationDialog> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return OrientationBuilder(builder: (_, orientation) {
      if (orientation == Orientation.portrait) {
        return Container(
            height: height * thirtyFivePixelRatioH,
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
                    child: Row(
                      children: [
                        Container(

                          alignment: Alignment.center,
                          height: height * widget.iconCircleSizeHeight,
                          width: width * widget.iconCircleSizeWidth,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: widget.borderColor),
                            color: widget.fillColor,
                          ),
                          child:   Icon(
                              widget.icon,
                              size: widget.iconSize,
                              color: widget.permanentIconColor,

                          ),
                        ),
                        SizedBox(
                          width: width * sixteenPixelRatioW,
                        ),
                        Text(
                          widget.text1,
                          style: sixteenBlackTextStyle,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.check,
                      size: 25,
                      color: widget.iconColor,
                    ),
                  ),
                ],
              ),
            ));
      } else {
        return Container(
            height: height * thirtyFivePixelRatioW,
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
                    child: Row(
                      children: [
                        Container(

                          height: height * widget.iconCircleSizeWidth,
                          width: width * widget.iconCircleSizeHeight,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: widget.borderColor),
                            color: widget.fillColor,
                          ),
                          child: Icon(

                                widget.icon,
                                size: widget.iconSize,
                                color: widget.permanentIconColor,

                          ),
                        ),
                        SizedBox(
                          width: width * sixteenPixelRatioH,
                        ),
                        Text(
                          widget.text1,
                          style: sixteenBlackTextStyle,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.check,
                      size: 25,
                      color: widget.iconColor,
                    ),
                  ),
                ],
              ),
            ));
      }
    });
  }
}
