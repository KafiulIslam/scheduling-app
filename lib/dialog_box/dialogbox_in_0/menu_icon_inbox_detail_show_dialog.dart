
import 'package:flutter/material.dart';
import 'package:to_do_list/common/common_classes.dart';
import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';
import 'package:to_do_list/dialog_box/dialogbox_in_0/inbox_mini_box_show_dialog.dart';




class MenuIconInboxDetailShowDialog extends StatefulWidget {

  final Function changeOption;
  const MenuIconInboxDetailShowDialog({
    Key? key, required this.changeOption
  }) : super(key: key);


  @override
  _MenuIconInboxDetailShowDialogState createState() => _MenuIconInboxDetailShowDialogState();
}

class _MenuIconInboxDetailShowDialogState extends State<MenuIconInboxDetailShowDialog> with SingleTickerProviderStateMixin {


  List<int> index = [1, 2, 3];
  int selectButton = 1;
  int marker = 0;





  @override
  Widget build(BuildContext context) {


    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;


    List <Widget> widgetList = [

      Container(child: Row(children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.inbox,
              size: 20,
              color: Colors.blue,
            )),
        SizedBox(
          width: width * sixteenPixelRatioH,
        ),
        const Text(
          'Inbox',
          style: sixteenAssTextStyle,
        ),
      ],),),
      Container( child: Row(
        mainAxisAlignment: mainSpaceBetween,
        crossAxisAlignment: crossCenter,
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
        ],),),
      Container( child: Row(
        mainAxisAlignment: mainSpaceBetween,
        crossAxisAlignment: crossCenter,
        children: [
          const TvIcon(),
          SizedBox(width:  width * sixteenPixelRatioW,),
          Container(
              child: const Text('A few tips to start',style: TextStyle(fontSize: 16,color: black),)
          )
        ],),),
      Container( child: Row(
        mainAxisAlignment: mainSpaceBetween,
        crossAxisAlignment: crossCenter,
        children: [
          const TvIcon(),
          SizedBox(width:  width * sixteenPixelRatioW,),
          Container(
              child: const Text('To go further',style: TextStyle(fontSize: 16,color: black),)
          )
        ],),),
      Container( child: Row(
        mainAxisAlignment: mainSpaceBetween,
        crossAxisAlignment: crossCenter,
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
        ],),),
      Container( child: Row(
        mainAxisAlignment: mainSpaceBetween,
        crossAxisAlignment: crossCenter,
        children: [
          const TvIcon(),
          SizedBox(width:  width * sixteenPixelRatioW,),
          Container(
              child: const Text('To do',style: TextStyle(fontSize: 16,color: black),)
          )
        ],),),
      Container( child: Row(
        mainAxisAlignment: mainSpaceBetween,
        crossAxisAlignment: crossCenter,
        children: [
          const TvIcon(),
          SizedBox(width:  width * sixteenPixelRatioW,),
          Container(
              child: const Text('Doing',style: TextStyle(fontSize: 16,color: black),)
          )
        ],),),

    ];


    return OrientationBuilder(builder: (_, orientation) {
      if (orientation == Orientation.portrait) {
        return ShowDialogBackground(
        backColor: lightAss,
        inputColumn: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SizedBox(height: height * eightPixelRatioH,),
            Container(
              height: height * fivePixelRatioH,
              width: width * thirtyPixelRatioW,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: dividerColor,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                  right: width * sixteenPixelRatioW,
                  left: width * sixteenPixelRatioW),
              child: Container(
                height: height * fiftyPixelRatioH,
                width: width,
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
                            'Move To...',
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
                            'done',
                            style: TextStyle(fontSize: 18, color: transparent),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:   EdgeInsets.only(left:  width * sixteenPixelRatioW,right: width * sixteenPixelRatioW),
              child: Container(
                alignment: Alignment.center,
                  height: height * thirtyTwoPixelRatioH,
                  width: width ,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
                    color: deepAss,
                  ),
                  child:SizedBox(
                    height: height * thirtyTwoPixelRatioH,
                    width: width  ,
                    child: TextFormField(


                        decoration:   InputDecoration(
                          hintText: 'Search',
                          hintStyle: const TextStyle(
                            color: dividerColor,
                            fontSize: 14,
                          ),
                          icon: Padding(
                            padding: EdgeInsets.only(left: width * sixteenPixelRatioW,top: height * fivePixelRatioH),
                            child: const Icon(Icons.search,color: dividerColor,),
                          ),
                          border: InputBorder.none,



                        )

                      // initialValue:  "Search",style: hintTextStyle,

                    ),
                  )
              ),
            ),
            SizedBox(height: height * eightPixelRatioH,),
            const Divider(
              height: 1,
              color: deepAss,
            ),
            SizedBox(height: height * eightPixelRatioH,),
            Column(


              children: [


                GestureDetector(
                  onTap: (){
                    setState(() {
                      marker = 0;
                      marker == 0 ? widget.changeOption(widgetList[0]) : widget.changeOption(widgetList[marker]);
                    });
                  },
                  child: BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar: Padding(
                    padding:   EdgeInsets.only(right : width * sixteenPixelRatioW),
                    child: Row(

                      mainAxisAlignment: mainSpaceBetween,
                      crossAxisAlignment: crossCenter,
                      children: [
                      Container(child: Row(children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.inbox,
                            size: 20,
                            color: Colors.blue,
                          )),
                      SizedBox(
                        width: width * sixteenPixelRatioH,
                      ),
                      const Text(
                        'Inbox',
                        style: sixteenAssTextStyle,
                      ),
                      ],),),
                          Icon(Icons.check,size: 20, color: marker == 0 ? red : transparent)
                      ],
                    ),
                  ) ,),
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
                      marker = 1;
                      marker == 1 ? widget.changeOption(widgetList[1]) : widget.changeOption(widgetList[marker]);

                    });
                  },
                  child: BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar: Padding(
                    padding:   EdgeInsets.only(left : width * sixteenPixelRatioW),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
               Container(
                 // width:  width * seventyPixelRatioW,
                 child: Row(
                 mainAxisAlignment: mainSpaceBetween,
                 crossAxisAlignment: crossCenter,
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
               ],),),
                        Icon(Icons.check,size: 20, color: marker == 1 ? red : transparent)
                      ],),
                  ) ,),
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
                      marker = 2;
                      marker == 2 ? widget.changeOption(widgetList[2]) : widget.changeOption(widgetList[marker]);
                    });
                  },
                  child: BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar:  Padding(
                    padding:   EdgeInsets.only(left : width * sixteenPixelRatioW),
                    child: Row(
                      crossAxisAlignment: crossCenter,
                      children: [
                        Container(
                          // width:  width * hundredPixelRatioW,
                          child: Row(
                          mainAxisAlignment: mainSpaceBetween,
                          crossAxisAlignment: crossCenter,
                          children: [
                            const TvIcon(),
                            SizedBox(width:  width * sixteenPixelRatioW,),
                            Container(
                                child: const Text('A few tips to start',style: TextStyle(fontSize: 16,color: black),)
                            )
                          ],),),
                        Icon(Icons.check,size: 20, color: marker == 2 ? red : transparent),

                      ],
                    ),
                  ) ,),
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
                      marker = 3;
                      marker == 3 ? widget.changeOption(widgetList[3]) : widget.changeOption(widgetList[marker]);
                    });
                  },
                  child: BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar:  Padding(
                    padding:   EdgeInsets.only(left : width * sixteenPixelRatioW),
                    child: Row(
                      crossAxisAlignment: crossCenter,
                      children: [
                        Container(
                          // width:  width * hundredPixelRatioW,
                          child: Row(
                          mainAxisAlignment: mainSpaceBetween,
                          crossAxisAlignment: crossCenter,
                          children: [
                            const TvIcon(),
                            SizedBox(width:  width * sixteenPixelRatioW,),
                            Container(
                                child: const Text('To go further',style: TextStyle(fontSize: 16,color: black),)
                            )
                          ],),),
                        Icon(Icons.check,size: 20, color: marker == 3 ? red : transparent),

                      ],
                    ),
                  ) ,),
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
                      marker = 4;
                      marker == 4 ? widget.changeOption(widgetList[4]) : widget.changeOption(widgetList[marker]);
                    });
                  },
                  child: BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar:  Padding(
                    padding:   EdgeInsets.only(left : width * sixteenPixelRatioW),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // width:  width * seventyPixelRatioW,
                          child: Row(
                          mainAxisAlignment: mainSpaceBetween,
                          crossAxisAlignment: crossCenter,
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
                          ],),),
                        Icon(Icons.check,size: 20, color: marker == 4 ? red : transparent)
                      ],),
                  ) ,),
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
                      marker = 5 ;
                      marker == 5 ? widget.changeOption(widgetList[5]) : widget.changeOption(widgetList[marker]);
                    });
                  },
                  child: BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar: Padding(
                    padding:   EdgeInsets.only(left : width * sixteenPixelRatioW),
                    child: Row(
                      crossAxisAlignment: crossCenter,
                      children: [
                        Container(
                          // width:  width * seventyPixelRatioW,
                          child: Row(
                          mainAxisAlignment: mainSpaceBetween,
                          crossAxisAlignment: crossCenter,
                          children: [
                            const TvIcon(),
                            SizedBox(width:  width * sixteenPixelRatioW,),
                            Container(
                                child: const Text('To do',style: TextStyle(fontSize: 16,color: black),)
                            )
                          ],),),
                        Icon(Icons.check,size: 20, color: marker == 5 ? red : transparent),

                      ],
                    ),
                  ) ,),
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
                      marker = 6 ;
                      marker == 6 ? widget.changeOption(widgetList[6]) : widget.changeOption(widgetList[marker]);
                    });
                  },
                  child: BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar: Padding(
                    padding:   EdgeInsets.only(left : width * sixteenPixelRatioW),
                    child: Row(
                      crossAxisAlignment: crossCenter,
                      children: [
                        Container(
                          // width:  width * seventyPixelRatioW,
                          child: Row(
                          mainAxisAlignment: mainSpaceBetween,
                          crossAxisAlignment: crossCenter,
                          children: [
                            const TvIcon(),
                            SizedBox(width:  width * sixteenPixelRatioW,),
                            Container(
                                child: const Text('Doing',style: TextStyle(fontSize: 16,color: black),)
                            )
                          ],),),
                        Icon(Icons.check,size: 20, color: marker == 6 ? red : transparent),

                      ],
                    ),
                  ) ,),
                ),



              ],

            ),

          ],
        )); }else{
        return ShowDialogBackground(
            backColor: lightAss,
            inputColumn: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                SizedBox(height: height * eightPixelRatioW,),
                Container(
                  height: height * fivePixelRatioW,
                  width: width * thirtyPixelRatioH,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: dividerColor,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(
                      right: width * sixteenPixelRatioH,
                      left: width * sixteenPixelRatioH),
                  child: Container(
                    height: height * fiftyPixelRatioW,
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {

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
                                'Move To...',
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
                                'done',
                                style: TextStyle(fontSize: 18, color: transparent),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:   EdgeInsets.only(left:  width * sixteenPixelRatioH,right: width * sixteenPixelRatioH),
                  child: Container(
                      alignment: Alignment.center,
                      height: height * thirtyTwoPixelRatioW,
                      width: width ,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
                        color: deepAss,
                      ),
                      child:SizedBox(
                        height: height * thirtyTwoPixelRatioW,
                        width: width  ,
                        child: TextFormField(


                            decoration:   InputDecoration(
                              hintText: 'Search',
                              hintStyle: const TextStyle(
                                color: dividerColor,
                                fontSize: 14,
                              ),
                              icon: Padding(
                                padding: EdgeInsets.only(left: width * sixteenPixelRatioH,top: height * fivePixelRatioW),
                                child: const Icon(Icons.search,color: dividerColor,),
                              ),
                              border: InputBorder.none,



                            )

                          // initialValue:  "Search",style: hintTextStyle,

                        ),
                      )
                  ),
                ),
                SizedBox(height: height * eightPixelRatioW,),
                const Divider(
                  height: 1,
                  color: deepAss,
                ),
                SizedBox(height: height * eightPixelRatioW,),
                Column(


                  children: [

                    GestureDetector(
                      onTap: (){
                        setState(() {
                          marker = 0;
                          marker == 0 ? widget.changeOption(widgetList[0]) : widget.changeOption(widgetList[marker]);
                        });
                      },
                      child: BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar: Padding(
                        padding:   EdgeInsets.only(right : width * sixteenPixelRatioH),
                        child: Row(

                          mainAxisAlignment: mainSpaceBetween,
                          crossAxisAlignment: crossCenter,
                          children: [
                            Container(child: Row(children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.inbox,
                                    size: 20,
                                    color: Colors.blue,
                                  )),
                              SizedBox(
                                width: width * sixteenPixelRatioW,
                              ),
                              const Text(
                                'Inbox',
                                style: sixteenAssTextStyle,
                              ),
                            ],),),
                            Icon(Icons.check,size: 20, color: marker == 0 ? red : transparent)
                          ],
                        ),
                      ) ,),
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
                          marker = 1;
                          marker == 1 ? widget.changeOption(widgetList[1]) : widget.changeOption(widgetList[marker]);

                        });
                      },
                      child: BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar: Padding(
                        padding:   EdgeInsets.only(left : width * sixteenPixelRatioH),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // width:  width * seventyPixelRatioW,
                              child: Row(
                                mainAxisAlignment: mainSpaceBetween,
                                crossAxisAlignment: crossCenter,
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
                                ],),),
                            Icon(Icons.check,size: 20, color: marker == 1 ? red : transparent)
                          ],),
                      ) ,),
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
                          marker = 2;
                          marker == 2 ? widget.changeOption(widgetList[2]) : widget.changeOption(widgetList[marker]);
                        });
                      },
                      child: BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar:  Padding(
                        padding:   EdgeInsets.only(left : width * sixteenPixelRatioH),
                        child: Row(
                          crossAxisAlignment: crossCenter,
                          children: [
                            Container(
                              // width:  width * hundredPixelRatioW,
                              child: Row(
                                mainAxisAlignment: mainSpaceBetween,
                                crossAxisAlignment: crossCenter,
                                children: [
                                  const TvIcon(),
                                  SizedBox(width:  width * sixteenPixelRatioH,),
                                  Container(
                                      child: const Text('A few tips to start',style: TextStyle(fontSize: 16,color: black),)
                                  )
                                ],),),
                            Icon(Icons.check,size: 20, color: marker == 2 ? red : transparent),

                          ],
                        ),
                      ) ,),
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
                          marker = 3;
                          marker == 3 ? widget.changeOption(widgetList[3]) : widget.changeOption(widgetList[marker]);
                        });
                      },
                      child: BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar:  Padding(
                        padding:   EdgeInsets.only(left : width * sixteenPixelRatioH),
                        child: Row(
                          crossAxisAlignment: crossCenter,
                          children: [
                            Container(
                              // width:  width * hundredPixelRatioW,
                              child: Row(
                                mainAxisAlignment: mainSpaceBetween,
                                crossAxisAlignment: crossCenter,
                                children: [
                                  const TvIcon(),
                                  SizedBox(width:  width * sixteenPixelRatioH,),
                                  Container(
                                      child: const Text('To go further',style: TextStyle(fontSize: 16,color: black),)
                                  )
                                ],),),
                            Icon(Icons.check,size: 20, color: marker == 3 ? red : transparent),

                          ],
                        ),
                      ) ,),
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
                          marker = 4;
                          marker == 4 ? widget.changeOption(widgetList[4]) : widget.changeOption(widgetList[marker]);
                        });
                      },
                      child: BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar:  Padding(
                        padding:   EdgeInsets.only(left : width * sixteenPixelRatioH),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // width:  width * seventyPixelRatioW,
                              child: Row(
                                mainAxisAlignment: mainSpaceBetween,
                                crossAxisAlignment: crossCenter,
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
                                ],),),
                            Icon(Icons.check,size: 20, color: marker == 4 ? red : transparent)
                          ],),
                      ) ,),
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
                          marker = 5 ;
                          marker == 5 ? widget.changeOption(widgetList[5]) : widget.changeOption(widgetList[marker]);
                        });
                      },
                      child: BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar: Padding(
                        padding:   EdgeInsets.only(left : width * sixteenPixelRatioH),
                        child: Row(
                          crossAxisAlignment: crossCenter,
                          children: [
                            Container(
                              // width:  width * seventyPixelRatioW,
                              child: Row(
                                mainAxisAlignment: mainSpaceBetween,
                                crossAxisAlignment: crossCenter,
                                children: [
                                  const TvIcon(),
                                  SizedBox(width:  width * sixteenPixelRatioH,),
                                  Container(
                                      child: const Text('To do',style: TextStyle(fontSize: 16,color: black),)
                                  )
                                ],),),
                            Icon(Icons.check,size: 20, color: marker == 5 ? red : transparent),

                          ],
                        ),
                      ) ,),
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
                          marker = 6 ;
                          marker == 6 ? widget.changeOption(widgetList[6]) : widget.changeOption(widgetList[marker]);
                        });
                      },
                      child: BarForInboxMiniBoxShowDialog(barColor: lightAss,rowInBar: Padding(
                        padding:   EdgeInsets.only(left : width * sixteenPixelRatioH),
                        child: Row(
                          crossAxisAlignment: crossCenter,
                          children: [
                            Container(
                              // width:  width * seventyPixelRatioW,
                              child: Row(
                                mainAxisAlignment: mainSpaceBetween,
                                crossAxisAlignment: crossCenter,
                                children: [
                                  const TvIcon(),
                                  SizedBox(width:  width * sixteenPixelRatioH,),
                                  Container(
                                      child: const Text('Doing',style: TextStyle(fontSize: 16,color: black),)
                                  )
                                ],),),
                            Icon(Icons.check,size: 20, color: marker == 6 ? red : transparent),

                          ],
                        ),
                      ) ,),
                    ),



                  ],

                ),

              ],
            ));
      }
      }
    );
  }
}
