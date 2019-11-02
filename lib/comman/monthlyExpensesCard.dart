import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../providers/model.dart';

class MonthlyExpensesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Colors.blue[600],
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 12),
                blurRadius: 32,
                spreadRadius: -24,
                color: Colors.black54)
          ]),
      margin: EdgeInsets.all(40),
      padding: EdgeInsets.all(40),
      height: 160,
      width: 400,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Monthly Expense",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            ),
            Text(
              Provider.of<Model>(context).monthlyExpenses().toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
