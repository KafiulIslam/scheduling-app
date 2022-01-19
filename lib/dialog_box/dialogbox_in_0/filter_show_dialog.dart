import 'package:flutter/material.dart';
import 'package:to_do_list/common/common_classes.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/filter_by_action_show_dialog.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/filter_by_collaborative_show_dialog.dart';




class FilterShowDialog extends StatefulWidget {
    const FilterShowDialog({Key? key}) : super(key: key);



  @override
  _FilterShowDialogState createState() => _FilterShowDialogState();
}


class _FilterShowDialogState extends State<FilterShowDialog> {



       String optionForFilterCollaborative = ' '  ;
       String optionForFilterAction = '';


     String filterByCollaborator = 'Filter By Collaborator';
     String filterByAction =  'Filter by action';

  // get rakib => null;

     String optionPickerFromCollaborative (String value) {
         return optionForFilterCollaborative = value;
      }


      String optionPickerFromAction(String value) {
         return optionForFilterAction = value;
      }



  _filterByCollaboratorAlertDialog(BuildContext context,   ) {
    return showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 200),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return OrientationBuilder(builder: (_, orientation) {
          if (orientation == Orientation.portrait)  {
            return    Align(
              alignment: Alignment.centerRight,
              child: ShowDialogBackground(
                backColor: lightAss,
                inputColumn: FilterByCollaborativeShowDialog( appBarTitle: filterByCollaborator, changeSelection: optionPickerFromCollaborative),

              ),
            );
          } else {
            return   Align(
              alignment: Alignment.centerRight,
              child: ShowDialogBackground(
                backColor: lightAss,
                inputColumn: FilterByCollaborativeShowDialog(  appBarTitle: filterByCollaborator,changeSelection: optionPickerFromCollaborative ),
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



  _filterByActionAlertDialog(BuildContext context ) {
    return showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 200),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return OrientationBuilder(builder: (_, orientation) {
          if (orientation == Orientation.portrait)  {
            return    Align(
              alignment: Alignment.centerRight,
              child: ShowDialogBackground(
                backColor: lightAss,
                inputColumn: FilterByActionShowDialog( appBarTitle: filterByAction,changeSelection: optionPickerFromAction),

              ),
            );
          } else {
            return   Align(
              alignment: Alignment.centerRight,
              child: ShowDialogBackground(
                backColor: lightAss,
                inputColumn: FilterByActionShowDialog(  appBarTitle: filterByAction,changeSelection: optionPickerFromAction),
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



  // @override
  // void initState() {
  //   // TODO: implement initState
  //   optionPickerFromCollaborative(optionForFilterCollaborative);
  //   optionPickerFromAction(optionForFilterAction);
  // }




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
                          Navigator.pop(context,false);
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
                          Navigator.pop(context,false);
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
            GestureDetector(
              onTap: (){
                setState(()   {

                     _filterByCollaboratorAlertDialog(context, );



                });
              },
              child:    FieldBoxInFilterDialog(
                text1: filterByCollaborator,
                text2:   optionForFilterCollaborative,


              ),
            ),
            const Divider(height: 1, color: dividerColor),
                 GestureDetector(

                   onTap: (){
                     setState(()   {
                       _filterByActionAlertDialog(context);

                       // print( 'the value of digit is $digit');

                     });
                   },
                   child:    FieldBoxInFilterDialog(
              text1: filterByAction,
              text2: optionForFilterAction,


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
              onTap: (){
                setState(()   {
                  _filterByCollaboratorAlertDialog(context);

                  // print( 'the value of digit is $digit');

                });
              },
              child:    FieldBoxInFilterDialog(
                text1: filterByCollaborator,
                text2:   optionForFilterCollaborative,


              ),
            ),
            const Divider(height: 1, color: dividerColor),
            GestureDetector(

              onTap: (){
                setState(()   {
                  _filterByActionAlertDialog(context);



                });
              },
              child:    FieldBoxInFilterDialog(
                text1:filterByAction,
                text2:  optionForFilterAction,


              ),
            ),

          ],
        );
      }
    });
  }
}




class FieldBoxInFilterDialog extends StatefulWidget {
  const FieldBoxInFilterDialog({Key? key, required this.text1, required this.text2  }) : super(key: key);


  final String text1;
  final String text2;




  @override
  _FieldBoxInFilterDialogState createState() => _FieldBoxInFilterDialogState();
}

class _FieldBoxInFilterDialogState extends State<FieldBoxInFilterDialog> {


  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return  OrientationBuilder(builder: (_, orientation) {
      if (orientation == Orientation.portrait) {

        return Container(

            height: height * thirtyFivePixelRatioH,
            width: width,

            child: Padding(
              padding:
              EdgeInsets.only(left: width * sixteenPixelRatioW,right: width * eightPixelRatioW),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.text1,
                    style: sixteenBlackTextStyle,
                  ),
                  Container(

                    child: Row(children: [
                      Text(widget.text2,style: const TextStyle(fontSize: 16,color: dividerColor),),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: dividerColor,
                        ),
                      ),
                    ],),
                  ),
                ],
              ),
            ));
      } else{
        return Container(

            height: height * thirtyFivePixelRatioW,
            width: width,

            child: Padding(
              padding:
              EdgeInsets.only(left: width * sixteenPixelRatioH,right: width * eightPixelRatioH),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.text1,
                    style: sixteenBlackTextStyle,
                  ),
                  Container(

                    child: Row(children: [
                      Text(widget.text2,style: const TextStyle(fontSize: 16,color: dividerColor),),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: dividerColor,
                        ),
                      ),
                    ],),
                  ),
                ],
              ),
            ));
      }
      }
    );
  }
}
