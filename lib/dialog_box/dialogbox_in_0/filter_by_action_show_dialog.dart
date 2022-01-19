import 'package:flutter/material.dart';
import 'package:to_do_list/common/common_classes.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/filter_by_collaborative_show_dialog.dart';



class FilterByActionShowDialog extends StatefulWidget {

  final String appBarTitle;
  final Function changeSelection;
  const FilterByActionShowDialog(
      {Key? key,  required this.appBarTitle, required this.changeSelection})
      : super(key: key);




  @override
  _FilterByActionShowDialogState createState() =>
      _FilterByActionShowDialogState();
}

class _FilterByActionShowDialogState extends State<FilterByActionShowDialog> {


  List<String> toggleList = [
    'All Actions',
    'Added tasks',
    'Updated tasks',
    'Completed tasks',
    'Uncompleted tasks',
    'Deleted tasks',
    'Added comments'
  ];





  int marker = 0;


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
                    marker = 0;
                    marker == 0
                        ? widget.changeSelection(toggleList[0])
                        :  widget.changeSelection(toggleList[marker]) ;

                    Navigator.pop(context, true);

                  });
                },
                child: MenuBoxInFilterCollaborationDialog(
                  text1: toggleList[0],
                  iconColor: marker == 0 ? red : transparent,
                  iconCircleSizeHeight: sixteenPixelRatioH,
                  iconCircleSizeWidth: sixteenPixelRatioW,
                  borderColor: transparent,
                  fillColor: dividerColor,
                  icon: Icons.star,
                  permanentIconColor: white,
                  iconSize: 10 ,
                )),
            const CommonDivider(leftPad: fiftyPixelRatioW),
            GestureDetector(
                onTap: () {
                  setState(() {
                    marker = 1;
                    marker == 1
                        ?  widget.changeSelection(toggleList[1])
                        : widget.changeSelection(toggleList[marker]) ;

                    Navigator.pop(context, true);
                  });
                },
                child: MenuBoxInFilterCollaborationDialog(
                  text1: toggleList[1],
                  iconColor: marker == 1 ? red : transparent,
                  iconCircleSizeHeight: sixteenPixelRatioH,
                  iconCircleSizeWidth: sixteenPixelRatioW,
                  borderColor: transparent,
                  fillColor: Colors.orange,
                  icon: Icons.add,
                  permanentIconColor: white,
                  iconSize: 10 ,
                )),
            const CommonDivider(leftPad: fiftyPixelRatioW),
            GestureDetector(
                onTap: () {
                  setState(() {
                    marker = 2;
                    marker == 2
                        ?  widget.changeSelection(toggleList[2])
                        :  widget.changeSelection(toggleList[marker]) ;

                    Navigator.pop(context, true);
                  });
                },
                child: MenuBoxInFilterCollaborationDialog(
                  text1: toggleList[2],
                  iconColor: marker == 2 ? red : transparent,
                  iconCircleSizeHeight: sixteenPixelRatioH,
                  iconCircleSizeWidth: sixteenPixelRatioW,
                  borderColor: transparent,
                  fillColor: Colors.blue,
                  icon: Icons.rotate_left,
                  permanentIconColor: white,
                  iconSize: 10 ,
                )),
            const CommonDivider(leftPad: fiftyPixelRatioW),
            GestureDetector(
                onTap: () {
                  setState(() {
                    marker = 3;
                    marker == 3
                        ?  widget.changeSelection(toggleList[3])
                        :  widget.changeSelection(toggleList[marker]) ;

                    Navigator.pop(context, true);
                  });
                },
                child: MenuBoxInFilterCollaborationDialog(
                  text1: toggleList[3],
                  iconColor: marker == 3 ? red : transparent,
                  iconCircleSizeHeight: sixteenPixelRatioH,
                  iconCircleSizeWidth: sixteenPixelRatioW,
                  borderColor: transparent,
                  fillColor: green,
                  icon: Icons.check,
                  permanentIconColor: white,
                  iconSize: 10 ,
                )),
            const CommonDivider(leftPad: fiftyPixelRatioW),
            GestureDetector(
                onTap: () {
                  setState(() {
                    marker = 4;
                    marker == 4
                        ?  widget.changeSelection(toggleList[4])
                        :  widget.changeSelection(toggleList[marker]) ;

                    Navigator.pop(context, true);
                  });
                },
                child: MenuBoxInFilterCollaborationDialog(
                  text1: toggleList[4],
                  iconColor: marker == 4 ? red : transparent,
                  iconCircleSizeHeight: sixteenPixelRatioH,
                  iconCircleSizeWidth: sixteenPixelRatioW,
                  borderColor: transparent,
                  fillColor: dividerColor,
                  icon: Icons.check,
                  permanentIconColor: white,
                  iconSize: 10 ,
                )),
            const CommonDivider(leftPad: fiftyPixelRatioW),
            GestureDetector(
                onTap: () {
                  setState(() {
                    marker = 5;
                    marker == 5
                        ? widget.changeSelection(toggleList[5])
                        :  widget.changeSelection(toggleList[marker]) ;

                    Navigator.pop(context, true);
                  });
                },
                child: MenuBoxInFilterCollaborationDialog(
                  text1: toggleList[5],
                  iconColor: marker == 5 ? red : transparent,
                  iconCircleSizeHeight: sixteenPixelRatioH,
                  iconCircleSizeWidth: sixteenPixelRatioW,
                  borderColor: transparent,
                  fillColor: dividerColor,
                  icon: Icons.minimize,
                  permanentIconColor: white,
                  iconSize: 10
                )),
            const CommonDivider(leftPad: fiftyPixelRatioW),
            GestureDetector(
                onTap: () {
                  setState(() {
                    marker = 6;
                    marker == 6
                        ?  widget.changeSelection(toggleList[6])
                        :  widget.changeSelection(toggleList[marker]) ;

                    Navigator.pop(context, true);
                  });
                },
                child: MenuBoxInFilterCollaborationDialog(
                  text1: toggleList[6],
                  iconColor: marker == 6 ? red : transparent,
                  iconCircleSizeHeight: sixteenPixelRatioH,
                  iconCircleSizeWidth: sixteenPixelRatioW,
                  borderColor: transparent,
                  fillColor: Colors.blue,
                  icon: Icons.message,
                  permanentIconColor: white,
                  iconSize: 10 ,
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
                      height: height * fiftyPixelRatioW,
                      width: width * fiftyPixelRatioH,
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
                    marker = 0;
                    marker == 0
                        ? widget.changeSelection(toggleList[0])
                        :  widget.changeSelection(toggleList[marker]) ;

                    Navigator.pop(context, true);

                  });
                },
                child: MenuBoxInFilterCollaborationDialog(
                  text1: toggleList[0],
                  iconColor: marker == 0 ? red : transparent,
                  iconCircleSizeHeight: sixteenPixelRatioH,
                  iconCircleSizeWidth: sixteenPixelRatioW,
                  borderColor: transparent,
                  fillColor: dividerColor,
                  icon: Icons.star,
                  permanentIconColor: white,
                  iconSize: 10 ,
                )),
            const CommonDivider(leftPad: fiftyPixelRatioW),
            GestureDetector(
                onTap: () {
                  setState(() {
                    marker = 1;
                    marker == 1
                        ?  widget.changeSelection(toggleList[1])
                        : widget.changeSelection(toggleList[marker]) ;

                    Navigator.pop(context, true);
                  });
                },
                child: MenuBoxInFilterCollaborationDialog(
                  text1: toggleList[1],
                  iconColor: marker == 1 ? red : transparent,
                  iconCircleSizeHeight: sixteenPixelRatioH,
                  iconCircleSizeWidth: sixteenPixelRatioW,
                  borderColor: transparent,
                  fillColor: Colors.orange,
                  icon: Icons.add,
                  permanentIconColor: white,
                  iconSize: 10 ,
                )),
            const CommonDivider(leftPad: fiftyPixelRatioW),
            GestureDetector(
                onTap: () {
                  setState(() {
                    marker = 2;
                    marker == 2
                        ?  widget.changeSelection(toggleList[2])
                        :  widget.changeSelection(toggleList[marker]) ;

                    Navigator.pop(context, true);
                  });
                },
                child: MenuBoxInFilterCollaborationDialog(
                  text1: toggleList[2],
                  iconColor: marker == 2 ? red : transparent,
                  iconCircleSizeHeight: sixteenPixelRatioH,
                  iconCircleSizeWidth: sixteenPixelRatioW,
                  borderColor: transparent,
                  fillColor: Colors.blue,
                  icon: Icons.rotate_left,
                  permanentIconColor: white,
                  iconSize: 10 ,
                )),
            const CommonDivider(leftPad: fiftyPixelRatioW),
            GestureDetector(
                onTap: () {
                  setState(() {
                    marker = 3;
                    marker == 3
                        ?  widget.changeSelection(toggleList[3])
                        :  widget.changeSelection(toggleList[marker]) ;

                    Navigator.pop(context, true);
                  });
                },
                child: MenuBoxInFilterCollaborationDialog(
                  text1: toggleList[3],
                  iconColor: marker == 3 ? red : transparent,
                  iconCircleSizeHeight: sixteenPixelRatioH,
                  iconCircleSizeWidth: sixteenPixelRatioW,
                  borderColor: transparent,
                  fillColor: green,
                  icon: Icons.check,
                  permanentIconColor: white,
                  iconSize: 10 ,
                )),
            const CommonDivider(leftPad: fiftyPixelRatioW),
            GestureDetector(
                onTap: () {
                  setState(() {
                    marker = 4;
                    marker == 4
                        ?  widget.changeSelection(toggleList[4])
                        :  widget.changeSelection(toggleList[marker]) ;

                    Navigator.pop(context, true);
                  });
                },
                child: MenuBoxInFilterCollaborationDialog(
                  text1: toggleList[4],
                  iconColor: marker == 4 ? red : transparent,
                  iconCircleSizeHeight: sixteenPixelRatioH,
                  iconCircleSizeWidth: sixteenPixelRatioW,
                  borderColor: transparent,
                  fillColor: dividerColor,
                  icon: Icons.check,
                  permanentIconColor: white,
                  iconSize: 10 ,
                )),
            const CommonDivider(leftPad: fiftyPixelRatioW),
            GestureDetector(
                onTap: () {
                  setState(() {
                    marker = 5;
                    marker == 5
                        ? widget.changeSelection(toggleList[5])
                        :  widget.changeSelection(toggleList[marker]) ;

                    Navigator.pop(context, true);
                  });
                },
                child: MenuBoxInFilterCollaborationDialog(
                    text1: toggleList[5],
                    iconColor: marker == 5 ? red : transparent,
                    iconCircleSizeHeight: sixteenPixelRatioH,
                    iconCircleSizeWidth: sixteenPixelRatioW,
                    borderColor: transparent,
                    fillColor: dividerColor,
                    icon: Icons.minimize,
                    permanentIconColor: white,
                    iconSize: 10
                )),
            const CommonDivider(leftPad: fiftyPixelRatioW),
            GestureDetector(
                onTap: () {
                  setState(() {
                    marker = 6;
                    marker == 6
                        ?  widget.changeSelection(toggleList[6])
                        :  widget.changeSelection(toggleList[marker]) ;

                    Navigator.pop(context, true);
                  });
                },
                child: MenuBoxInFilterCollaborationDialog(
                  text1: toggleList[6],
                  iconColor: marker == 6 ? red : transparent,
                  iconCircleSizeHeight: sixteenPixelRatioH,
                  iconCircleSizeWidth: sixteenPixelRatioW,
                  borderColor: transparent,
                  fillColor: Colors.blue,
                  icon: Icons.message,
                  permanentIconColor: white,
                  iconSize: 10 ,
                )),

          ],
        );
      }
    });
  }
}
