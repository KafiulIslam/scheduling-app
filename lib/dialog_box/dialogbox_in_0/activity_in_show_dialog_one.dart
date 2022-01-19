import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/common/common_classes.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/filter_show_dialog.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/menu_show_dialog.dart';

class ActivityShowDialogOne extends StatefulWidget {
  const ActivityShowDialogOne({Key? key}) : super(key: key);

  @override
  _ActivityShowDialogOneState createState() =>
      _ActivityShowDialogOneState();
}

class _ActivityShowDialogOneState extends State<ActivityShowDialogOne> {



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
            return const Align(
              alignment: Alignment.centerRight,
              child: ShowDialogBackground(
                backColor: lightAss,
                inputColumn: MenuShowDialog(),
              ),
            );
          } else {
            return const Align(
              alignment: Alignment.centerRight,
              child: ShowDialogBackground(
                backColor: lightAss,
                inputColumn: MenuShowDialog(),
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



  _filterAlertDialog(BuildContext context) {
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
                inputColumn: FilterShowDialog(),
              ),
            );
          } else {
            return const Align(
              alignment: Alignment.centerRight,
              child: ShowDialogBackground(
                backColor: lightAss,
                inputColumn: FilterShowDialog(),
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


    return OrientationBuilder(builder: (_, orientation)
    {
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
                            'Close',
                            style: TextStyle(fontSize: 18, color: red),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: width * thirtyTwoPixelRatioW,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                      Container(
                        child: const FittedBox(
                          fit: BoxFit.contain,
                          child: Center(
                            child: Text(
                              'Completed tasks - me',
                              style: TextStyle(fontSize: 14, color: dividerColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: width * sixteenPixelRatioW,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _menuAlertDialog(context);
                      });
                    },
                    child: Container(
                      height: height * fiftyPixelRatioH,
                      width: width * fiftyPixelRatioW,
                     child: Padding(
                       padding: EdgeInsets.only(
                           right: width * fivePixelRatioW,
                           left: width *  fivePixelRatioW),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Container(
                             height: 2,
                             width: width * twentyPixelRatioW,
                             color: red,
                           ),
                          const  Divider(height: 5,color: lightAss,),
                           Container(
                             height: 2,
                             width: width * twentyPixelRatioW,
                             color: red,
                           ),
                           const  Divider(height: 5,color: lightAss,),
                           Container(
                             height: 2,
                             width: width * twentyPixelRatioW,
                             color: red,
                           ),

                         ],
                       ),
                     )
                    ),
                  ),
                  Container(
                    height: height * fiftyPixelRatioH,
                    width: width * fiftyPixelRatioW,
                    child: IconButton(
                      onPressed: (){
                        setState(() {
                          _filterAlertDialog(context);
                        });
                      },icon: const Icon(Icons.filter,size: 25,color: red,),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(height: 1,color: dividerColor,),
      Expanded(
        child: Container(
          color: lightAss,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [    Container(
              height: height * thirtyPixelRatioH,
              width: width,
              child: const Center(
                child:   Text('No activity in the past two week',style: TextStyle(fontSize: 14,color: dividerColor),
                ),
              ),),
              const Divider(height: 1,color: dividerColor,),
              Container(
                height: height * thirtyPixelRatioH,
                width: width,
                child: const Center(child:    Text('Load history from two weeks ago......',style: TextStyle(fontSize: 14,color: red),)),

              ),],
          ),
        ),
      )


        ],
      ); }else {
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
                              'Close',
                              style: TextStyle(fontSize: 18, color: red),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: width * thirtyTwoPixelRatioH,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
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
                        Container(
                          child: const FittedBox(
                            fit: BoxFit.contain,
                            child: Center(
                              child: Text(
                                'Completed tasks - me',
                                style: TextStyle(fontSize: 14, color: dividerColor),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: width * sixteenPixelRatioH,),
                    Container(
                        height: height * fiftyPixelRatioW,
                        width: width * fiftyPixelRatioH,
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: width * fivePixelRatioH,
                              left: width *  fivePixelRatioH),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 2,
                                width: width * twentyPixelRatioH,
                                color: red,
                              ),
                              const  Divider(height: 5,color: lightAss,),
                              Container(
                                height: 2,
                                width: width * twentyPixelRatioH,
                                color: red,
                              ),
                              const  Divider(height: 5,color: lightAss,),
                              Container(
                                height: 2,
                                width: width * twentyPixelRatioH,
                                color: red,
                              ),

                            ],
                          ),
                        )
                    ),
                    Container(
                      height: height * fiftyPixelRatioW,
                      width: width * fiftyPixelRatioH,
                      child: IconButton(
                        onPressed: (){
                          setState(() {
                            _filterAlertDialog(context);
                          });
                        },icon: const Icon(Icons.filter,size: 25,color: red,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(height: 1,color: dividerColor,),
            Expanded(
              child: Container(
                color: lightAss,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [    Container(
                    height: height * thirtyPixelRatioW,
                    width: width,
                    child: const Center(
                      child:   Text('No activity in the past two week',style: TextStyle(fontSize: 14,color: dividerColor),
                      ),
                    ),),
                    const Divider(height: 1,color: dividerColor,),
                    Container(
                      height: height * thirtyPixelRatioW,
                      width: width,
                      child: const Center(child:    Text('Load history from two weeks ago......',style: TextStyle(fontSize: 14,color: red),)),

                    ),],
                ),
              ),
            )


          ],
        );
      }
    });
  }
}
