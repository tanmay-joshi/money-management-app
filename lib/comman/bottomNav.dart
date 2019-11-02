import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 80,
      alignment: Alignment(0, 1),
      child: Container(
        width: width * 0.9,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(200),
            boxShadow: {
              BoxShadow(
                  color: Colors.grey[100],
                  offset: Offset(0, 12),
                  blurRadius: 32,
                  spreadRadius: -24)
            }.toList()),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: Container(
                child: Icon(Icons.home),
                width: width * 0.2,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/transactions');
              },
              child: Container(
                child: Icon(Icons.account_balance_wallet),
                width: width * 0.2,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: Container(
                child: Icon(Icons.money_off),
                width: width * 0.2,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: Container(
                child: Icon(Icons.supervised_user_circle),
                width: width * 0.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
