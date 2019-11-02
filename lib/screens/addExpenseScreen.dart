import 'package:flutter/material.dart';
import 'package:money_app/providers/model.dart';
import 'package:provider/provider.dart';

import '../models/transactionModel.dart';

class AddExpenseScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddExpenseScreen();
  }
}

class _AddExpenseScreen extends State<AddExpenseScreen> {
  final TextEditingController amountController = TextEditingController();
  final TextEditingController typeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Your Expense"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(32),
            padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(24)),
            child: TextField(
              decoration:
                  InputDecoration(hintText: "Amount", border: InputBorder.none),
              keyboardType: TextInputType.number,
              controller: amountController,
            ),
          ),
          Container(
              margin: EdgeInsets.all(32),
              padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(24)),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Type of Expense", border: InputBorder.none),
                controller: typeController,
              )),
          RaisedButton(
            child: Text("Add Expense"),
            onPressed: () {
              TransactionModel transaction = TransactionModel(
                  amount: double.parse(amountController.text),
                  type: typeController.text);
              Provider.of<Model>(context).addExpense(transaction);
              Navigator.pushNamed(context, '/');
            },
          )
        ],
      ),
    );
  }
}
