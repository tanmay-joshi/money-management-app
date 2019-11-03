import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String name;
  final Color color;
  Button(this.color, this.name);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.fromLTRB(40, 12, 40, 12),
        child: Text(name),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 1,
              color: color,
            ),
            borderRadius: BorderRadius.circular(24)),
      ),
    );
  }
}
