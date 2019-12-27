import 'package:flutter/material.dart';
import 'package:money_app/comman/ExpensesCard.dart';
import 'package:money_app/models/transactionModel.dart';
import 'package:money_app/providers/model.dart';
import 'package:provider/provider.dart';

class ListOf extends StatelessWidget {
  final String value;

  ListOf(this.value);

  @override
  Widget build(BuildContext context) {
    List<TransactionModel> allExpense =
        Provider.of<Model>(context).allExpense();
    List<TransactionModel> allIncome = Provider.of<Model>(context).allIncome();
    List<TransactionModel> all = Provider.of<Model>(context).allTransactions;
    List<Widget> getExpense() {
      return allExpense.reversed.map((t) => ExpensesCard(t)).toList();
    }

    List<Widget> getIncome() {
      return allIncome.reversed.map((t) => ExpensesCard(t)).toList();
    }

    List<Widget> getAll() {
      return all.reversed.map((t) => ExpensesCard(t)).toList();
    }

    switch (value) {
      case "Expense":
        {
          return Container(
            height: 200,
            padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: getExpense(),
            ),
          );
        }
        break;
      case "Income":
        {
          return Container(
            height: 200,
            padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: getIncome(),
            ),
          );
        }
        break;
      case "All":
        {
          return Container(
            height: 200,
            padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: getAll(),
            ),
          );
        }
    }
  }
}
