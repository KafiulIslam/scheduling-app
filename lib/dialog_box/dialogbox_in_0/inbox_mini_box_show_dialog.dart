import 'package:flutter/material.dart';
import 'package:to_do_list/common/common_classes.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';


class InboxMiniBoxShowDialog extends StatefulWidget {
  const InboxMiniBoxShowDialog({
    Key? key,
  }) : super(key: key);


  @override
  _InboxMiniBoxShowDialogState createState() => _InboxMiniBoxShowDialogState();
}

class _InboxMiniBoxShowDialogState extends State<InboxMiniBoxShowDialog> {

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
                top: height * 0.4,
                left: width * 0.2,
                child: Container(
                  // height: 495,
                  height: height * 0.2,
                  width: width * twoFiftyTwoPixelRatioW,
                    color: lightAss,



                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(


                      children: [

                        BarForInboxMiniBoxShowDialog(barColor: deepAss,rowInBar: Row(

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
                              width: width * sixteenPixelRatioH,
                            ),
                            const Text(
                              'Inbox',
                              style: sixteenAssTextStyle,
                            ),
                          ],
                        ) ,),
                        Padding(
                        padding:
                        EdgeInsets.only(left: width * thirtyTwoPixelRatioW),
                        child: const Divider(
                          color: deepAss,
                          height: 1,
                        ),
                      ),
                        BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar: Padding(
                          padding:   EdgeInsets.only(left : width * sixteenPixelRatioW),
                          child: Row(
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
                              SizedBox(width: width * eightPixelRatioW,),
                              Container(
                                child:   const Text("Welcome",style: sixteenAssTextStyle,),
                              ),
                              IconButton(onPressed: ( ){}, icon:  const Icon(Icons.star,size: 15,color: Colors.yellow,))
                            ],),
                        ) ,),
                        Padding(
                          padding:
                          EdgeInsets.only(left: width * thirtyTwoPixelRatioW),
                          child: const Divider(
                            color: deepAss,
                            height: 1,
                          ),
                        ),//thirtyTwoPad
                        BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar:  Padding(
                          padding:   EdgeInsets.only(left : width * sixteenPixelRatioW),
                          child: Row(
                            crossAxisAlignment: crossCenter,
                            children: [
                              const TvIcon(),
                              SizedBox(width:  width * sixteenPixelRatioW,),
                              Container(
                                  child: const Text('A few tips to start',style: TextStyle(fontSize: 16,color: black),)
                              )
                            ],
                          ),
                        ) ,),

                        Padding(
                          padding:
                          EdgeInsets.only(left: width * fiftyPixelRatioW),
                          child: const Divider(
                            color: deepAss,
                            height: 1,
                          ),
                        ), //// fiftyPad
                        BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar:  Padding(
                          padding:   EdgeInsets.only(left : width * sixteenPixelRatioW),
                          child: Row(
                            crossAxisAlignment: crossCenter,
                            children: [
                              const TvIcon(),
                              SizedBox(width:  width * sixteenPixelRatioW,),
                              Container(
                                  child: const Text('To go further',style: TextStyle(fontSize: 16,color: black),)
                              )
                            ],
                          ),
                        ) ,),

                        Padding(
                          padding:
                          EdgeInsets.only(left: width * fiftyPixelRatioW),
                          child: const Divider(
                            color: deepAss,
                            height: 1,
                          ),
                        ),
                        BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar:  Padding(
                          padding:   EdgeInsets.only(left : width * sixteenPixelRatioW),
                          child: Row(
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
                              SizedBox(width: width * eightPixelRatioW,),
                              Container(
                                child:   const Text("Try boards",style: sixteenAssTextStyle,),
                              ),
                              IconButton(onPressed: ( ){}, icon:  const Icon(Icons.star,size: 15,color: transparent,))
                            ],),
                        ) ,),

                        Padding(
                          padding:
                          EdgeInsets.only(left: width * thirtyTwoPixelRatioW),
                          child: const Divider(
                            color: deepAss,
                            height: 1,
                          ),
                        ),
                        BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar: Padding(
                          padding:   EdgeInsets.only(left : width * sixteenPixelRatioW),
                          child: Row(
                            crossAxisAlignment: crossCenter,
                            children: [
                              const TvIcon(),
                              SizedBox(width:  width * sixteenPixelRatioW,),
                              Container(
                                  child: const Text('To do',style: TextStyle(fontSize: 16,color: black),)
                              )
                            ],
                          ),
                        ) ,),

                        Padding(
                          padding:
                          EdgeInsets.only(left: width * fiftyPixelRatioW),
                          child: const Divider(
                            color: deepAss,
                            height: 1,
                          ),
                        ),
                        BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar: Padding(
                          padding:   EdgeInsets.only(left : width * sixteenPixelRatioW),
                          child: Row(
                            crossAxisAlignment: crossCenter,
                            children: [
                              const TvIcon(),
                              SizedBox(width:  width * sixteenPixelRatioW,),
                              Container(
                                  child: const Text('Doing',style: TextStyle(fontSize: 16,color: black),)
                              )
                            ],
                          ),
                        ) ,),

                        Padding(
                          padding:
                          EdgeInsets.only(left: width * fiftyPixelRatioW),
                          child: const Divider(
                            color: deepAss,
                            height: 1,
                          ),
                        ),
                        BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar:  Padding(
                          padding:   EdgeInsets.only(left : width * sixteenPixelRatioW),
                          child: Row(
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
                              SizedBox(width: width * eightPixelRatioW,),
                              Container(
                                child:   const Text("Add projects",style: sixteenAssTextStyle,),
                              ),
                              IconButton(onPressed: ( ){}, icon:  const Icon(Icons.star,size: 15,color: transparent,))
                            ],),
                        ) ,),

                      ],

                    ),
                  )


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
                top: height * 0.4,
                left: width * 0.2,
                child: Container(
                  // height: 495,
                  height: height * 0.2,
                  width: width * twoFiftyTwoPixelRatioH,

                  decoration: BoxDecoration(
                    // color: const Color(0xFFD8DCE1),
                    color: lightAss,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  // color: white,

                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(

                      children: [
                        BarForInboxMiniBoxShowDialog(barColor: deepAss,rowInBar: Row(

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
                              width: width * eightPixelRatioH,
                            ),
                            const Text(
                              'Inbox',
                              style: sixteenAssTextStyle,
                            ),
                          ],
                        ) ,),
                        Padding(
                          padding:
                          EdgeInsets.only(left: width * thirtyTwoPixelRatioH),
                          child: const Divider(
                            color: deepAss,
                            height: 1,
                          ),
                        ),
                        BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar: Padding(
                          padding:   EdgeInsets.only(left : width * sixteenPixelRatioH),
                          child: Row(
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
                              SizedBox(width: width * eightPixelRatioH,),
                              Container(
                                child:   const Text("Welcome",style: sixteenAssTextStyle,),
                              ),
                              IconButton(onPressed: ( ){}, icon:  const Icon(Icons.star,size: 15,color: Colors.yellow,))
                            ],),
                        ) ,),
                        Padding(
                          padding:
                          EdgeInsets.only(left: width * thirtyTwoPixelRatioH),
                          child: const Divider(
                            color: deepAss,
                            height: 1,
                          ),
                        ),//thirtyTwoPad
                        BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar:  Padding(
                          padding:   EdgeInsets.only(left : width * sixteenPixelRatioH),
                          child: Row(
                            crossAxisAlignment: crossCenter,
                            children: [
                              const TvIcon(),
                              SizedBox(width:  width * sixteenPixelRatioH,),
                              Container(
                                  child: const Text('A few tips to start',style: TextStyle(fontSize: 16,color: black),)
                              )
                            ],
                          ),
                        ) ,),

                        Padding(
                          padding:
                          EdgeInsets.only(left: width * fiftyPixelRatioH),
                          child: const Divider(
                            color: deepAss,
                            height: 1,
                          ),
                        ), //// fiftyPad
                        BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar:  Padding(
                          padding:   EdgeInsets.only(left : width * sixteenPixelRatioH),
                          child: Row(
                            crossAxisAlignment: crossCenter,
                            children: [
                              const TvIcon(),
                              SizedBox(width:  width * sixteenPixelRatioH,),
                              Container(
                                  child: const Text('To go further',style: TextStyle(fontSize: 16,color: black),)
                              )
                            ],
                          ),
                        ) ,),

                        Padding(
                          padding:
                          EdgeInsets.only(left: width * fiftyPixelRatioH),
                          child: const Divider(
                            color: deepAss,
                            height: 1,
                          ),
                        ),
                        BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar:  Padding(
                          padding:   EdgeInsets.only(left : width * sixteenPixelRatioH),
                          child: Row(
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
                              SizedBox(width: width * eightPixelRatioW,),
                              Container(
                                child:   const Text("Try boards",style: sixteenAssTextStyle,),
                              ),
                              IconButton(onPressed: ( ){}, icon:  const Icon(Icons.star,size: 15,color: transparent,))
                            ],),
                        ) ,),

                        Padding(
                          padding:
                          EdgeInsets.only(left: width * thirtyTwoPixelRatioH),
                          child: const Divider(
                            color: deepAss,
                            height: 1,
                          ),
                        ),
                        BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar: Padding(
                          padding:   EdgeInsets.only(left : width * sixteenPixelRatioH),
                          child: Row(
                            crossAxisAlignment: crossCenter,
                            children: [
                              const TvIcon(),
                              SizedBox(width:  width * sixteenPixelRatioH,),
                              Container(
                                  child: const Text('To do',style: TextStyle(fontSize: 16,color: black),)
                              )
                            ],
                          ),
                        ) ,),

                        Padding(
                          padding:
                          EdgeInsets.only(left: width * fiftyPixelRatioH),
                          child: const Divider(
                            color: deepAss,
                            height: 1,
                          ),
                        ),
                        BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar: Padding(
                          padding:   EdgeInsets.only(left : width * sixteenPixelRatioH),
                          child: Row(
                            crossAxisAlignment: crossCenter,
                            children: [
                              const TvIcon(),
                              SizedBox(width:  width * sixteenPixelRatioH,),
                              Container(
                                  child: const Text('Doing',style: TextStyle(fontSize: 16,color: black),)
                              )
                            ],
                          ),
                        ) ,),

                        Padding(
                          padding:
                          EdgeInsets.only(left: width * fiftyPixelRatioH),
                          child: const Divider(
                            color: deepAss,
                            height: 1,
                          ),
                        ),
                        BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar:  Padding(
                          padding:   EdgeInsets.only(left : width * sixteenPixelRatioH),
                          child: Row(
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
                              SizedBox(width: width * eightPixelRatioH,),
                              Container(
                                child:   const Text("Add projects",style: sixteenAssTextStyle,),
                              ),
                              IconButton(onPressed: ( ){}, icon:  const Icon(Icons.star,size: 15,color: transparent,))
                            ],),
                        ) ,),

                      ],

                    ),
                  ),
                ))
          ]),
        );
      }
    });
  }
}




class BarForInboxMiniBoxShowDialog extends StatefulWidget {

  final Widget rowInBar;
  final Color barColor;

  const BarForInboxMiniBoxShowDialog({Key? key,required this.rowInBar,required this.barColor}) : super(key: key);

  @override
  _BarForInboxMiniBoxShowDialogState createState() => _BarForInboxMiniBoxShowDialogState();
}

class _BarForInboxMiniBoxShowDialogState extends State<BarForInboxMiniBoxShowDialog> {
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return    OrientationBuilder(builder: (_, orientation) {
      if (orientation == Orientation.portrait) { return
        GestureDetector(
      onTap: (){
        setState(() {
          Navigator.pop(context);
        });
      },
      child: Container(
        height: height * thirtyPixelRatioH,
        width: width,
        color: widget.barColor,

        // decoration:   BoxDecoration(
        //
        //   borderRadius: BorderRadius.circular(16
        //
        //
        //
        //   ),
        // ),
        child: widget.rowInBar,
      ),
    );}else{
        return  GestureDetector(
          onTap: (){
            setState(() {
              Navigator.pop(context);
            });
          },
          child: Container(
            height: height * thirtyPixelRatioW,
            width: width,
            color: widget.barColor,

            child: widget.rowInBar,
          ),
        );
      }
      }
    );
  }
}


class CustomScrollViewMiniBoxShowDialog extends StatefulWidget {
  const CustomScrollViewMiniBoxShowDialog({
    Key? key,
  }) : super(key: key);

  @override
  _CustomScrollViewMiniBoxShowDialogState createState() => _CustomScrollViewMiniBoxShowDialogState();
}

class _CustomScrollViewMiniBoxShowDialogState extends State<CustomScrollViewMiniBoxShowDialog> {
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
                top: height * 0.4,
                left: width * 0.15,
                child: Container(
                  // height: 495,
                  height: height * 0.2,
                  width: width * twoFiftyTwoPixelRatioW,

                  decoration: BoxDecoration(
                    // color: const Color(0xFFD8DCE1),
                    color: lightAss,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  // color: white,

                  child: CustomScrollView(

                     slivers:
                       [
SliverFixedExtentList(
  itemExtent: height * twentyFivePixelRatioH,
  delegate: SliverChildListDelegate([
    GestureDetector(
      onTap: (){
        setState(() {
          Navigator.pop(context);
        });
      },
      child: Container(
        height: height * thirtyPixelRatioH,
        width: width,
        decoration: const BoxDecoration(
          color: deepAss,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular( 16),
            topRight: Radius.circular(16),


          ),
        ),
        child: Row(

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
              width: width * sixteenPixelRatioH,
            ),
            const Text(
              'Inbox',
              style: sixteenAssTextStyle,
            ),
          ],
        ),
      ),
    ),
    GestureDetector(
      onTap: (){
        setState(() {
          Navigator.pop(context);
        });
      },
      child: Container(
        height: height * thirtyPixelRatioH,
        width: width,
        color: lightAss,

        child: Padding(
          padding:   EdgeInsets.only(left : width * sixteenPixelRatioW),
          child: Row(
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
              SizedBox(width: width * eightPixelRatioW,),
              Container(
                child:   const Text("Welcome",style: sixteenAssTextStyle,),
              ),
              IconButton(onPressed: ( ){}, icon:  const Icon(Icons.star,size: 15,color: Colors.yellow,))
            ],),
        ),
      ),
    ),
    Padding(
      padding:
      EdgeInsets.only(left: width * thirtyTwoPixelRatioW),
      child: const Divider(
        color: deepAss,
        height: 1,
      ),
    ),//thirtyTwoPad
    GestureDetector(
      onTap: (){
        setState(() {
          Navigator.pop(context);
        });
      },
      child: Container(
        height: height * thirtyPixelRatioH,
        width: width,
        color: lightAss,

        child: Padding(
          padding:   EdgeInsets.only(left : width * sixteenPixelRatioW),
          child: Row(
            crossAxisAlignment: crossCenter,
            children: [
              const TvIcon(),
              SizedBox(width:  width * sixteenPixelRatioW,),
              Container(
                  child: const Text('A few tips to start',style: TextStyle(fontSize: 16,color: black),)
              )
            ],
          ),
        ),
      ),
    ),
    Padding(
      padding:
      EdgeInsets.only(left: width * fiftyPixelRatioW),
      child: const Divider(
        color: deepAss,
        height: 1,
      ),
    ), //// fiftyPad
    GestureDetector(
      onTap: (){
        setState(() {
          Navigator.pop(context);
        });
      },
      child: Container(
        height: height * thirtyPixelRatioH,
        width: width,
        color: lightAss,

        child: Padding(
          padding:   EdgeInsets.only(left : width * sixteenPixelRatioW),
          child: Row(
            crossAxisAlignment: crossCenter,
            children: [
              const TvIcon(),
              SizedBox(width:  width * sixteenPixelRatioW,),
              Container(
                  child: const Text('To go further',style: TextStyle(fontSize: 16,color: black),)
              )
            ],
          ),
        ),
      ),
    ),
    Padding(
      padding:
      EdgeInsets.only(left: width * fiftyPixelRatioW),
      child: const Divider(
        color: deepAss,
        height: 1,
      ),
    ),
    GestureDetector(
      onTap: (){
        setState(() {
          Navigator.pop(context);
        });
      },
      child: Container(
        height: height * thirtyPixelRatioH,
        width: width,
        color: lightAss,

        child: Padding(
          padding:   EdgeInsets.only(left : width * sixteenPixelRatioW),
          child: Row(
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
              SizedBox(width: width * eightPixelRatioW,),
              Container(
                child:   const Text("Try boards",style: sixteenAssTextStyle,),
              ),
              IconButton(onPressed: ( ){}, icon:  const Icon(Icons.star,size: 15,color: transparent,))
            ],),
        ),
      ),
    ),
    Padding(
      padding:
      EdgeInsets.only(left: width * thirtyTwoPixelRatioW),
      child: const Divider(
        color: deepAss,
        height: 1,
      ),
    ),
    GestureDetector(
      onTap: (){
        setState(() {
          Navigator.pop(context);
        });
      },
      child: Container(
        height: height * thirtyPixelRatioH,
        width: width,
        color: lightAss,

        child: Padding(
          padding:   EdgeInsets.only(left : width * sixteenPixelRatioW),
          child: Row(
            crossAxisAlignment: crossCenter,
            children: [
              const TvIcon(),
              SizedBox(width:  width * sixteenPixelRatioW,),
              Container(
                  child: const Text('To do',style: TextStyle(fontSize: 16,color: black),)
              )
            ],
          ),
        ),
      ),
    ),
    Padding(
      padding:
      EdgeInsets.only(left: width * fiftyPixelRatioW),
      child: const Divider(
        color: deepAss,
        height: 1,
      ),
    ),
    GestureDetector(
      onTap: (){
        setState(() {
          Navigator.pop(context);
        });
      },
      child: Container(
        height: height * thirtyPixelRatioH,
        width: width,
        color: lightAss,

        child: Padding(
          padding:   EdgeInsets.only(left : width * sixteenPixelRatioW),
          child: Row(
            crossAxisAlignment: crossCenter,
            children: [
              const TvIcon(),
              SizedBox(width:  width * sixteenPixelRatioW,),
              Container(
                  child: const Text('Doing',style: TextStyle(fontSize: 16,color: black),)
              )
            ],
          ),
        ),
      ),
    ),
    Padding(
      padding:
      EdgeInsets.only(left: width * fiftyPixelRatioW),
      child: const Divider(
        color: deepAss,
        height: 1,
      ),
    ),
    GestureDetector(
      onTap: (){
        setState(() {
          Navigator.pop(context);
        });
      },
      child: Container(
        height: height * thirtyPixelRatioH,
        width: width,
        color: lightAss,

        child: Padding(
          padding:   EdgeInsets.only(left : width * sixteenPixelRatioW),
          child: Row(
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
              SizedBox(width: width * eightPixelRatioW,),
              Container(
                child:   const Text("Add projects",style: sixteenAssTextStyle,),
              ),
              IconButton(onPressed: ( ){}, icon:  const Icon(Icons.star,size: 15,color: transparent,))
            ],),
        ),
      ),
    ),
  ]),
),


                      ],
                    ),
                  ),
                )]
          ),
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
                top: height * 0.4,
                left: width * 0.15,
                child: Container(
                  // height: 495,
                  height: height * 0.2,
                  width: width * twoFiftyTwoPixelRatioH,

                  decoration: BoxDecoration(
                    // color: const Color(0xFFD8DCE1),
                    color: lightAss,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  // color: white,

                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [

                        GestureDetector(
                          onTap: (){
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          child: Container(
                            height: height * thirtyPixelRatioW,
                            width: width,
                            decoration: const BoxDecoration(
                              color: deepAss,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular( 16),
                                topRight: Radius.circular(16),


                              ),
                            ),
                            child: Row(

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
                                  width: width * sixteenPixelRatioW,
                                ),
                                const Text(
                                  'Inbox',
                                  style: sixteenAssTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          child: Container(
                            height: height * thirtyPixelRatioW,
                            width: width,
                            color: lightAss,

                            child: Padding(
                              padding:   EdgeInsets.only(left : width * sixteenPixelRatioH),
                              child: Row(
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
                                  SizedBox(width: width * eightPixelRatioH,),
                                  Container(
                                    child:   const Text("Welcome",style: sixteenAssTextStyle,),
                                  ),
                                  IconButton(onPressed: ( ){}, icon:  const Icon(Icons.star,size: 15,color: Colors.yellow,))
                                ],),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsets.only(left: width * thirtyTwoPixelRatioH),
                          child: const Divider(
                            color: deepAss,
                            height: 1,
                          ),
                        ),//thirtyTwoPad
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          child: Container(
                            height: height * thirtyPixelRatioW,
                            width: width,
                            color: lightAss,

                            child: Padding(
                              padding:   EdgeInsets.only(left : width * sixteenPixelRatioH),
                              child: Row(
                                crossAxisAlignment: crossCenter,
                                children: [
                                  const TvIcon(),
                                  SizedBox(width:  width * sixteenPixelRatioH,),
                                  Container(
                                      child: const Text('A few tips to start',style: TextStyle(fontSize: 16,color: black),)
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsets.only(left: width * fiftyPixelRatioH),
                          child: const Divider(
                            color: deepAss,
                            height: 1,
                          ),
                        ), //// fiftyPad
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          child: Container(
                            height: height * thirtyPixelRatioW,
                            width: width,
                            color: lightAss,

                            child: Padding(
                              padding:   EdgeInsets.only(left : width * sixteenPixelRatioH),
                              child: Row(
                                crossAxisAlignment: crossCenter,
                                children: [
                                  const TvIcon(),
                                  SizedBox(width:  width * sixteenPixelRatioH,),
                                  Container(
                                      child: const Text('To go further',style: TextStyle(fontSize: 16,color: black),)
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsets.only(left: width * fiftyPixelRatioH),
                          child: const Divider(
                            color: deepAss,
                            height: 1,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          child: Container(
                            height: height * thirtyPixelRatioW,
                            width: width,
                            color: lightAss,

                            child: Padding(
                              padding:   EdgeInsets.only(left : width * sixteenPixelRatioH),
                              child: Row(
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
                                  SizedBox(width: width * eightPixelRatioH,),
                                  Container(
                                    child:   const Text("Try boards",style: sixteenAssTextStyle,),
                                  ),
                                  IconButton(onPressed: ( ){}, icon:  const Icon(Icons.star,size: 15,color: transparent,))
                                ],),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsets.only(left: width * thirtyTwoPixelRatioH),
                          child: const Divider(
                            color: deepAss,
                            height: 1,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          child: Container(
                            height: height * thirtyPixelRatioW,
                            width: width,
                            color: lightAss,

                            child: Padding(
                              padding:   EdgeInsets.only(left : width * sixteenPixelRatioH),
                              child: Row(
                                crossAxisAlignment: crossCenter,
                                children: [
                                  const TvIcon(),
                                  SizedBox(width:  width * sixteenPixelRatioH,),
                                  Container(
                                      child: const Text('To do',style: TextStyle(fontSize: 16,color: black),)
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsets.only(left: width * fiftyPixelRatioH),
                          child: const Divider(
                            color: deepAss,
                            height: 1,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          child: Container(
                            height: height * thirtyPixelRatioW,
                            width: width,
                            color: lightAss,

                            child: Padding(
                              padding:   EdgeInsets.only(left : width * sixteenPixelRatioH),
                              child: Row(
                                crossAxisAlignment: crossCenter,
                                children: [
                                  const TvIcon(),
                                  SizedBox(width:  width * sixteenPixelRatioH,),
                                  Container(
                                      child: const Text('Doing',style: TextStyle(fontSize: 16,color: black),)
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsets.only(left: width * fiftyPixelRatioH),
                          child: const Divider(
                            color: deepAss,
                            height: 1,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          child: Container(
                            height: height * thirtyPixelRatioW,
                            width: width,
                            color: lightAss,

                            child: Padding(
                              padding:   EdgeInsets.only(left : width * sixteenPixelRatioH),
                              child: Row(
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
                                  SizedBox(width: width * eightPixelRatioH,),
                                  Container(
                                    child:   const Text("Add projects",style: sixteenAssTextStyle,),
                                  ),
                                  IconButton(onPressed: ( ){}, icon:  const Icon(Icons.star,size: 15,color: transparent,))
                                ],),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ))
          ]),
        );
      }
    });
  }
}








