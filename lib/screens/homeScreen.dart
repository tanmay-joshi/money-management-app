import 'package:flutter/material.dart';
import 'package:money_app/comman/bottomNav.dart';
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
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/addIncome');
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.fromLTRB(40, 12, 40, 12),
                    child: Text("Add Income"),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1,
                          color: Colors.green[600],
                        ),
                        borderRadius: BorderRadius.circular(24)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/addExpense');
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.fromLTRB(40, 12, 40, 12),
                    child: Text("Add Expense"),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1,
                          color: Colors.deepOrange[600],
                        ),
                        borderRadius: BorderRadius.circular(24)),
                  ),
                ),
              ],
            ),
            Transactions()
          ],
        ),
      ]),
    );
  }
}
