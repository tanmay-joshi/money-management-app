import 'package:flutter/material.dart';
import 'package:money_app/comman/ExpenseCardList.dart';

class Transactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: <Widget>[
          header("All Expenses"),
          ListOf("Expense"),
          header("All Income"),
          ListOf("Income"),
          header("All Transactions"),
          ListOf("All"),
        ],
      ),
    );
  }

  Widget header(String heading) {
    return Container(
      height: 64,
      alignment: Alignment(-0.8, 0),
      child: Text(
        heading,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
