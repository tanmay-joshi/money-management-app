import 'package:flutter/material.dart';
import 'package:money_app/comman/bottomSheetInput.dart';
import 'package:money_app/comman/transactions.dart';

import '../comman/monthlyExpensesCard.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: MyAppBar(100),
      body: Stack(children: <Widget>[
        ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(40, 40, 0, 0),
              decoration: BoxDecoration(),
              child: Text(
                "Hello Tanmay",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            MonthlyExpensesCard(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                BottomSheetInput(false),
                BottomSheetInput(true),
              ],
            ),
            Transactions()
          ],
        ),
      ]),
    );
  }
}
