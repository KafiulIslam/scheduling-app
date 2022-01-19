import 'package:flutter/material.dart';

import 'package:to_do_list/common/constant_page.dart';
import 'package:to_do_list/common/number_ratio.dart';

class FlagMiniBoxShowDialog extends StatefulWidget {
  const FlagMiniBoxShowDialog({
    Key? key,
  }) : super(key: key);

  @override
  _FlagMiniBoxShowDialogState createState() => _FlagMiniBoxShowDialogState();
}

class _FlagMiniBoxShowDialogState extends State<FlagMiniBoxShowDialog> {
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
                  width: width * twoHundredPixelRatioW,

                  decoration: BoxDecoration(
                    // color: const Color(0xFFD8DCE1),
                    color: lightAss,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  // color: white,

                  child: Column(
                    children: [
                      // Container(height: height * thirtyPixelRatioH,width:  width   ,
                      //   decoration: const BoxDecoration(
                      //     color: deepAss,
                      //     borderRadius: BorderRadius.only(
                      //       topLeft: Radius.circular(16),
                      //       topRight: Radius.circular(16),
                      //     ),
                      //
                      //   ),
                      //  child: Row(
                      //   children: [
                      //     IconButton(onPressed: ( ){}, icon: const Icon(Icons.flag,size: 20,color: red,)),
                      //     SizedBox(width: width * sixteenPixelRatioW,),
                      //     const Text('Priority 1',style: TextStyle(fontSize: 12,color: black),)
                      //   ],
                      // ),),
                      const MenuBarInMiniBoxShowDialog(
                          barColor: deepAss,
                          iconColor: Colors.red,
                          number: '1',topLeft: 16,topRight: 16,bottomLeft: 0,bottomRight: 0,),

                      Padding(
                        padding:
                            EdgeInsets.only(left: width * sixtyPixelRatioW),
                        child: const Divider(
                          color: deepAss,
                          height: 1,
                        ),
                      ),
                      const MenuBarInMiniBoxShowDialog(
                        barColor: lightAss,
                        iconColor: Colors.yellow,
                        number: '2',topLeft: 0,topRight: 0,bottomLeft: 0,bottomRight: 0,),
                      Padding(
                        padding:
                            EdgeInsets.only(left: width * sixtyPixelRatioW),
                        child: const Divider(
                          color: deepAss,
                          height: 1,
                        ),
                      ),
                      const MenuBarInMiniBoxShowDialog(
                        barColor: lightAss,
                        iconColor: Colors.blue,
                        number: '3',topLeft: 0,topRight: 0,bottomLeft: 0,bottomRight: 0,),
                      Padding(
                        padding:
                            EdgeInsets.only(left: width * sixtyPixelRatioW),
                        child: const Divider(
                          color: deepAss,
                          height: 1,
                        ),
                      ),
                      const MenuBarInMiniBoxShowDialog(
                        barColor: lightAss,
                        iconColor: white,
                        number: '4',topLeft: 0,topRight: 0,bottomLeft: 16,bottomRight: 16,),

                      // Container(height: height * thirtyPixelRatioH,width:  width   ,   decoration: const BoxDecoration(
                      //   color: lightAss,
                      //   borderRadius: BorderRadius.only(
                      //     bottomLeft: Radius.circular(16),
                      //     bottomRight: Radius.circular(16),
                      //   ),
                      //
                      // ), child: Row(
                      //   children: [
                      //     IconButton(onPressed: ( ){}, icon: const Icon(Icons.flag,size: 20,color: white,)),
                      //     SizedBox(width: width * sixteenPixelRatioW,),
                      //     const Text('Priority 4',style: TextStyle(fontSize: 12,color: black),)
                      //   ],
                      // ),),
                    ],
                  ),
                ))
          ]),
        );
      } else {
        return  Material(
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
                  width: width * twoHundredPixelRatioH,

                  decoration: BoxDecoration(
                    // color: const Color(0xFFD8DCE1),
                    color: lightAss,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  // color: white,

                  child: Column(
                    children: [

                      const MenuBarInMiniBoxShowDialog(
                        barColor: deepAss,
                        iconColor: Colors.red,
                        number: '1',topLeft: 16,topRight: 16,bottomLeft: 0,bottomRight: 0,),

                      Padding(
                        padding:
                        EdgeInsets.only(left: width * sixtyPixelRatioH),
                        child: const Divider(
                          color: deepAss,
                          height: 1,
                        ),
                      ),
                      const MenuBarInMiniBoxShowDialog(
                        barColor: lightAss,
                        iconColor: Colors.yellow,
                        number: '2',topLeft: 0,topRight: 0,bottomLeft: 0,bottomRight: 0,),
                      Padding(
                        padding:
                        EdgeInsets.only(left: width * sixtyPixelRatioH),
                        child: const Divider(
                          color: deepAss,
                          height: 1,
                        ),
                      ),
                      const MenuBarInMiniBoxShowDialog(
                        barColor: lightAss,
                        iconColor: Colors.blue,
                        number: '3',topLeft: 0,topRight: 0,bottomLeft: 0,bottomRight: 0,),
                      Padding(
                        padding:
                        EdgeInsets.only(left: width * sixtyPixelRatioH),
                        child: const Divider(
                          color: deepAss,
                          height: 1,
                        ),
                      ),
                      const MenuBarInMiniBoxShowDialog(
                        barColor: lightAss,
                        iconColor: white,
                        number: '4',topLeft: 0,topRight: 0,bottomLeft: 16,bottomRight: 16,),


                    ],
                  ),
                ))
          ]),
        );
      }
    });
  }
}

class MenuBarInMiniBoxShowDialog extends StatefulWidget {
  final Color barColor;
  final Color iconColor;
  final String number;

  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;

  const MenuBarInMiniBoxShowDialog({
    Key? key,
    required this.iconColor,
    required this.number,
    required this.barColor,
    required this.topLeft,
    required this.topRight,
    required this.bottomLeft,
    required this.bottomRight,
  }) : super(key: key);

  @override
  _MenuBarInMiniBoxShowDialogState createState() =>
      _MenuBarInMiniBoxShowDialogState();
}

class _MenuBarInMiniBoxShowDialogState
    extends State<MenuBarInMiniBoxShowDialog> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return OrientationBuilder(builder: (_, orientation) {
      if (orientation == Orientation.portrait) {
        return GestureDetector(
          onTap: (){
            setState(() {
              Navigator.pop(context);
            });
          },
          child: Container(
            height: height * thirtyPixelRatioH,
            width: width,
            decoration: BoxDecoration(
              color: widget.barColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(widget.topLeft),
                topRight: Radius.circular(widget.topRight),
                bottomLeft: Radius.circular(widget.bottomLeft),
                bottomRight: Radius.circular(widget.bottomRight),

              ),
            ),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.flag,
                      size: 20,
                      color: widget.iconColor,
                    )),
                SizedBox(
                  width: width * sixteenPixelRatioW,
                ),
                Text(
                  'Priority ${widget.number}',
                  style: const TextStyle(fontSize: 14, color: black),
                )
              ],
            ),
          ),
        );
      } else {
        return Container(
          height: height * thirtyPixelRatioW,
          width: width,
          decoration: const BoxDecoration(
            color: deepAss,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.flag,
                    size: 20,
                    color: widget.iconColor,
                  )),
              SizedBox(
                width: width * sixteenPixelRatioH,
              ),
              Text(
                widget.number,
                style: const TextStyle(fontSize: 12, color: black),
              )
            ],
          ),
        );
      }
    });
  }
}
