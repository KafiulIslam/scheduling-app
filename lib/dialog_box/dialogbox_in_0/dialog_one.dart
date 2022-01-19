import 'package:flutter/material.dart';
import 'package:to_do_list/common/constant_page.dart';

class ShowBoxMonthlyIncomeExpense extends StatefulWidget {
   const  ShowBoxMonthlyIncomeExpense({Key? key,  }): super(key: key);
 // const  ShowBoxMonthlyIncomeExpense({Key? key, required this.notificationNumber}): super(key: key);
 // final int notificationNumber;

  @override
  _ShowBoxMonthlyIncomeExpenseState createState() =>
      _ShowBoxMonthlyIncomeExpenseState();
}

class _ShowBoxMonthlyIncomeExpenseState
    extends State<ShowBoxMonthlyIncomeExpense> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,

          // color: white,
        ),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.20,
            child: Container(
              // height: 495,
              height: MediaQuery.of(context).size.height * 0.80,
              width: MediaQuery.of(context).size.width,

              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                color: white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 3,
                      width: 36,
                      color: Colors.red,
                    ),




                  ],
                ),
              ),
              // height: MediaQuery.of(context).size.height,

              // color: Colors.white,
            ))
      ]),
    );
  }
}