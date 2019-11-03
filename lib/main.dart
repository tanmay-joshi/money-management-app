import 'package:flutter/material.dart';
import 'package:money_app/comman/bottomSheetInput.dart';
import 'package:money_app/providers/model.dart';
import 'package:money_app/screens/addExpenseScreen.dart';
import 'package:provider/provider.dart';

import './screens/homeScreen.dart';
import './screens/transactionScreen.dart';
import './screens/addIncomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => Model(),
      child: MaterialApp(
        initialRoute: "/",
        routes: {
          "/": (context) => HomeScreen(),
          "/transactions": (context) => TransactionScreen(),
          '/addExpense': (context) => AddExpenseScreen(),
          '/addIncome': (context) => AddIncomeScreen(),
          //'/bottomSheet': (context) => BottomSheetInput(),
        },
      ),
    );
  }
}
