import 'package:flutter/material.dart';
import 'package:money_app/models/transactionModel.dart';

class ExpensesCard extends StatelessWidget {
  final TransactionModel transaction;
  ExpensesCard(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 120,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          gradient: transaction.expense
              ? LinearGradient(
                  colors: [Colors.red[200], Colors.red[600]],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)
              : LinearGradient(
                  colors: [Colors.green[200], Colors.green[600]],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 8),
                blurRadius: 24,
                spreadRadius: -16,
                color: Colors.black54)
          ],
          // border: Border.all(width: 1, color: Colors.black26),
          borderRadius: BorderRadius.circular(8),
          color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            transaction.type,
            style: TextStyle(
                fontSize: 16,
                color: Colors.grey[900],
                fontWeight: FontWeight.w400,
                letterSpacing: 1.2),
          ),
          Container(
            height: 20,
            width: 2,
            decoration: BoxDecoration(
              color: Colors.black26,
            ),
          ),
          Text(
            transaction.amount.toString(),
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
