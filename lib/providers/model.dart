import 'dart:collection';

import 'package:flutter/material.dart';

import '../models/transactionModel.dart';

class Model extends ChangeNotifier {
  List<TransactionModel> _transactions = [
    TransactionModel(
        amount: 100, expense: true, date: DateTime(2019).day, type: "food"),
    TransactionModel(
        amount: 150, expense: true, date: DateTime(2019).day, type: "food"),
    TransactionModel(
        amount: 180, expense: true, date: DateTime(2019).day, type: "food"),
    TransactionModel(
        amount: 240, expense: true, date: DateTime(2019).day, type: "food"),
    TransactionModel(
        amount: 100,
        expense: false,
        date: DateTime(2019).day,
        type: "freelance"),
    TransactionModel(
        amount: 400,
        expense: false,
        date: DateTime(2019).day,
        type: "freelance"),
    TransactionModel(
        amount: 800,
        expense: false,
        date: DateTime(2019).day,
        type: "freelance"),
    TransactionModel(
        amount: 1000,
        expense: false,
        date: DateTime(2019).day,
        type: "freelance")
  ];

  UnmodifiableListView<TransactionModel> get allTransactions =>
      UnmodifiableListView(_transactions);

  double monthlyExpenses() {
    double expense = 0;

    for (int i = 0; i < _transactions.length; i++) {
      if (_transactions[i].expense == true) {
        expense = expense + _transactions[i].amount;
      }
    }
    notifyListeners();
    return expense;
  }

  List<TransactionModel> allExpense() {
    List<TransactionModel> list = [];
    for (int i = 0; i < _transactions.length; i++) {
      _transactions[i].expense ? list.add(_transactions[i]) : null;
    }
    return list;
  }

  List<TransactionModel> allIncome() {
    List<TransactionModel> list = [];
    for (int i = 0; i < _transactions.length; i++) {
      _transactions[i].expense ? null : list.add(_transactions[i]);
    }
    return list;
  }

  void expensesoOf(String type) {
    double expense = 0;
    for (int i = 0; i < _transactions.length; i++) {
      if (_transactions[i].type == type) {
        expense = expense + _transactions[i].amount;
      }
    }
    notifyListeners();
  }

  void addExpense(TransactionModel transaction) {
    transaction.expense = true;
    _transactions.add(transaction);
    print(transaction.amount);
    notifyListeners();
  }

  void addIncome(TransactionModel transaction) {
    transaction.expense = false;
    _transactions.add(transaction);
    notifyListeners();
  }
}
