import 'package:flutter/material.dart';


const begin = Offset(1.0, 0.0);
const end = Offset.zero;
const curve = Curves.ease;

var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));


const white = Colors.white;
const black = Colors.black;
const red = Color(0xFFFF0000);
 final lightRed =     Colors.red.withOpacity(0.2);
const ass = Colors.black54;
const dividerColor = Color(0xFF9CA6B6);
const deepAss = Color(0xFFCBD1DF);
const lightAss = Color(0xFFD8DCE1);
const green = Colors.green;
final lightGreen = green.withOpacity(0.2);
const transparent = Colors.transparent;


const contain = BoxFit.contain;
const fill = BoxFit.fill;
const cover = BoxFit.cover;


const mainSpaceBetween = MainAxisAlignment.spaceBetween;
const crossCenter = CrossAxisAlignment.center;

const tenAssTextStyle = TextStyle(fontSize: 10,color: ass);
const fourteenAssTextStyle = TextStyle(fontSize: 14,color: ass);
const fourteenBlackTextStyle = TextStyle(fontSize: 14,color: black);
const sixteenWhiteTextStyle = TextStyle(fontSize: 16,color: white,fontWeight: FontWeight.bold);
const sixteenAssTextStyle = TextStyle(fontSize: 16,color: ass,);
const hintTextStyle = TextStyle(fontSize: 14,color: dividerColor,);
const sixteenBlackTextStyle = TextStyle(fontSize: 16,color: black);
const eighteenBlackTextStyle = TextStyle(fontSize: 18, color: black,fontWeight: FontWeight.bold);


const assSixteenForwardIcon = Icon(Icons.arrow_forward_ios,size:16,color: dividerColor,
);

final sixteenBorderRadiusInLightAss = BoxDecoration(
 borderRadius: BorderRadius.circular(16),
 color: lightAss,
);


TextEditingController planTitleFromTextField = TextEditingController();
TextEditingController descriptionFromTextField = TextEditingController();














