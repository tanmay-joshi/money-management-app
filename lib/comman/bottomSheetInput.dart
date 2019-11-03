import 'package:flutter/material.dart';
import 'package:money_app/models/transactionModel.dart';
import 'package:money_app/providers/model.dart';
import 'package:provider/provider.dart';

@override
class BottomSheetInput extends StatefulWidget {
  final bool expense;
  BottomSheetInput(this.expense);
  _BottomSheetInputState createState() => _BottomSheetInputState(expense);
}

class _BottomSheetInputState extends State<BottomSheetInput> {
  final bool expense;
  final TextEditingController amountController = TextEditingController();
  final TextEditingController typeController = TextEditingController();

  _BottomSheetInputState(this.expense);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheet(
          elevation: 2,
          context: context,
          builder: (context) => Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, -2),
                        blurRadius: 24,
                        spreadRadius: -12)
                  ]),
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  expense
                      ? Text(
                          "Expense",
                          style: TextStyle(fontSize: 20),
                        )
                      : Text("Income", style: TextStyle(fontSize: 20)),
                  Container(
                    margin: EdgeInsets.all(32),
                    padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(24)),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Amount", border: InputBorder.none),
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
                            hintText:
                                expense ? "Type of Expense" : "Type of Income",
                            border: InputBorder.none),
                        controller: typeController,
                      )),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.fromLTRB(40, 12, 40, 12),
                      child: expense ? Text("Add Expense") : Text("Add Income"),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 1,
                            color: expense
                                ? Colors.deepOrange[600]
                                : Colors.green[600],
                          ),
                          borderRadius: BorderRadius.circular(24)),
                    ),
                    onTap: () {
                      TransactionModel transaction = TransactionModel(
                          amount: double.parse(amountController.text),
                          type: typeController.text);
                      Provider.of<Model>(context).addExpense(transaction);
                      Navigator.of(context).pop();
                    },
                  )
                ],
              )),
        );
      },
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.fromLTRB(40, 12, 40, 12),
        child: expense
            ? Text(
                "Add Expense",
                style: TextStyle(
                    color:
                        expense ? Colors.deepOrange[600] : Colors.green[600]),
              )
            : Text(
                "Add Income",
                style: TextStyle(
                    color:
                        expense ? Colors.deepOrange[600] : Colors.green[600]),
              ),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 1,
            ),
            borderRadius: BorderRadius.circular(24)),
      ),
    );
  }
}
