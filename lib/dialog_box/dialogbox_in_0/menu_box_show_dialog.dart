
import 'package:flutter/material.dart';
import 'package:to_do_list/common/common_classes.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';


class MenuBoxShowDialogInboxPagePortrait extends StatefulWidget {
  const MenuBoxShowDialogInboxPagePortrait({
    Key? key,
  }) : super(key: key);


  @override
  _MenuBoxShowDialogInboxPagePortraitState createState() =>
      _MenuBoxShowDialogInboxPagePortraitState();
}

class _MenuBoxShowDialogInboxPagePortraitState
    extends State<MenuBoxShowDialogInboxPagePortrait> {
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
            top: height * 0.54,
            child: Container(
              // height: 495,
              height: height * 0.46,
              width: width,

              decoration: const BoxDecoration(
                // color: Color(0xFFD8DCE1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                // color: white,
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Padding(
                  padding:   EdgeInsets.only(left: width * eightPixelRatioW,right: width * eightPixelRatioW),
                  child: Container(
                    height:  height * twoFiftyTwoPixelRatioH,
                    width: width,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: deepAss,
                    ),
                    child: Column(
                      children: const [
                        ClassWithIconAndTitle(icon: Icons.person, title: 'Project Comment'),
                        Divider(height: 1,color: dividerColor,),
                        ClassWithIconAndTitle(icon: Icons.message, title: 'Add Section'),
                        Divider(height: 1,color: dividerColor,),
                        ClassWithIconAndTitle(icon: Icons.person, title: 'Select Tasks'),
                        Divider(height: 1,color: dividerColor,),
                        ClassWithIconAndTitle(icon: Icons.message, title: 'View'),
                        Divider(height: 1,color: dividerColor,),
                        ClassWithIconAndTitle(icon: Icons.person, title: 'Duplicate Project'),
                        Divider(height: 1,color: dividerColor,),
                        ClassWithIconAndTitle(icon: Icons.message, title: 'Show Completed Tasks'),
                        Divider(height: 1,color: dividerColor,),
                        ClassWithIconAndTitle(icon: Icons.person, title: 'Activity Log'),
                      ],
                    ),
                  ),
                ),
                  SizedBox(height: height * eightPixelRatioH,),

                const CancelButton(),

                ],
              ),

              // height: MediaQuery.of(context).size.height,

              // color: Colors.white,
            ))
      ]),
    );
  }
}



 class MenuBoxShowDialogInboxPageLandscape extends StatefulWidget {
   const MenuBoxShowDialogInboxPageLandscape({Key? key}) : super(key: key);

   @override
   _MenuBoxShowDialogInboxPageLandscapeState createState() => _MenuBoxShowDialogInboxPageLandscapeState();
 }

 class _MenuBoxShowDialogInboxPageLandscapeState extends State<MenuBoxShowDialogInboxPageLandscape> {
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
             top: height * 0.54,
             child: Container(
               // height: 495,
               height: height * 0.46,
               width: width,

               decoration: const BoxDecoration(
                 // color: Color(0xFFD8DCE1),
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(24),
                   topRight: Radius.circular(24),
                 ),
                 // color: white,
               ),

               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Padding(
                     padding:   EdgeInsets.only(left: width * eightPixelRatioH,right: width * eightPixelRatioH),
                     child: Container(
                       height:  height * twoFiftyTwoPixelRatioW,
                       width: width,

                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(16),
                         color: deepAss,
                       ),
                       child: Column(
                         children: const [
                           ClassWithIconAndTitle(icon: Icons.person, title: 'Project Comment'),
                           Divider(height: 1,color: dividerColor,),
                           ClassWithIconAndTitle(icon: Icons.message, title: 'Add Section'),
                           Divider(height: 1,color: dividerColor,),
                           ClassWithIconAndTitle(icon: Icons.person, title: 'Select Tasks'),
                           Divider(height: 1,color: dividerColor,),
                           ClassWithIconAndTitle(icon: Icons.message, title: 'View'),
                           Divider(height: 1,color: dividerColor,),
                           ClassWithIconAndTitle(icon: Icons.person, title: 'Duplicate Project'),
                           Divider(height: 1,color: dividerColor,),
                           ClassWithIconAndTitle(icon: Icons.message, title: 'Show Completed Tasks'),
                           Divider(height: 1,color: dividerColor,),
                           ClassWithIconAndTitle(icon: Icons.person, title: 'Activity Log'),
                         ],
                       ),
                     ),
                   ),
                   SizedBox(height: height * eightPixelRatioW,),

                   const CancelButton(),

                 ],
               ),

               // height: MediaQuery.of(context).size.height,

               // color: Colors.white,
             ))
       ]),
     );
   }
 }



 class MenuBoxShowDialogTodayPagePortrait extends StatefulWidget {
   const MenuBoxShowDialogTodayPagePortrait({Key? key}) : super(key: key);

   @override
   _MenuBoxShowDialogTodayPagePortraitState createState() => _MenuBoxShowDialogTodayPagePortraitState();
 }

 class _MenuBoxShowDialogTodayPagePortraitState extends State<MenuBoxShowDialogTodayPagePortrait> {
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
             top: height * 0.76,
             child: Container(
               // height: 495,
               height: height * 0.24,
               width: width,

               decoration: const BoxDecoration(
                 // color: Color(0xFFD8DCE1),
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(24),
                   topRight: Radius.circular(24),
                 ),
                 // color: white,
               ),

               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Padding(
                     padding:   EdgeInsets.only(left: width * eightPixelRatioW,right: width * eightPixelRatioW),
                     child: Container(
                       height:  height * oneHundredEightPixelRatioH,
                       width: width,

                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(16),
                         color: deepAss,
                       ),
                       child: Column(
                         children: const [

                           ClassWithIconAndTitle(icon: Icons.person, title: 'Select Tasks'),
                           Divider(height: 1,color: dividerColor,),
                           ClassWithIconAndTitle(icon: Icons.message, title: 'View'),

                           Divider(height: 1,color: dividerColor,),
                           ClassWithIconAndTitle(icon: Icons.person, title: 'Activity Log'),
                         ],
                       ),
                     ),
                   ),
                   SizedBox(height: height * eightPixelRatioH,),

                   const CancelButton(),

                 ],
               ),

               // height: MediaQuery.of(context).size.height,

               // color: Colors.white,
             ))
       ]),
     );
   }
 }




 class MenuShowDialogTodayPageLandscape extends StatefulWidget {
   const MenuShowDialogTodayPageLandscape({Key? key}) : super(key: key);

   @override
   _MenuShowDialogTodayPageLandscapeState createState() => _MenuShowDialogTodayPageLandscapeState();
 }

 class _MenuShowDialogTodayPageLandscapeState extends State<MenuShowDialogTodayPageLandscape> {
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
             top: height * 0.54,
             child: Container(
               // height: 495,
               height: height * 0.46,
               width: width,

               decoration: const BoxDecoration(
                 // color: Color(0xFFD8DCE1),
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(24),
                   topRight: Radius.circular(24),
                 ),
                 // color: white,
               ),

               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Padding(
                     padding:   EdgeInsets.only(left: width * eightPixelRatioH,right: width * eightPixelRatioH),
                     child: Container(
                       height:  height * oneHundredEightPixelRatioW,
                       width: width,

                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(16),
                         color: deepAss,
                       ),
                       child: Column(
                         children: const [

                           ClassWithIconAndTitle(icon: Icons.person, title: 'Select Tasks'),
                           Divider(height: 1,color: dividerColor,),
                           ClassWithIconAndTitle(icon: Icons.message, title: 'View'),

                           Divider(height: 1,color: dividerColor,),
                           ClassWithIconAndTitle(icon: Icons.person, title: 'Activity Log'),
                         ],
                       ),
                     ),
                   ),
                   SizedBox(height: height * eightPixelRatioW,),

                   const CancelButton(),

                 ],
               ),

               // height: MediaQuery.of(context).size.height,

               // color: Colors.white,
             ))
       ]),
     );
   }
 }







