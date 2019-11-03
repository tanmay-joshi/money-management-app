import 'package:flutter/material.dart';
import 'package:money_app/comman/bottomNav.dart';
import 'package:money_app/comman/bottomSheetInput.dart';
import 'package:money_app/comman/transactions.dart';

import '../comman/monthlyExpensesCard.dart';
import '../comman/ExpenseCardList.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
      ),
      body: Stack(children: <Widget>[
        ListView(
          children: <Widget>[
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
