import 'package:flutter/material.dart';
import 'package:money_app/comman/ExpenseCardList.dart';

import '../comman/bottomNav.dart';

class TransactionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: <Widget>[
            Container(
              height: 64,
              padding: EdgeInsets.all(16),
              child: Text(
                "All Expenses",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListOf("Expense"),
            Container(
              child: Text(
                "All Income",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListOf("Income"),
            Container(
              child: Text(
                "All Transactions",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListOf("All"),
            BottomNav(),
          ],
        ),
      ),
    );
  }
}
