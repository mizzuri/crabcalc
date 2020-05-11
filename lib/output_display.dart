import 'package:flutter/material.dart';
import 'data_bank.dart';

class OutputDisplay extends StatelessWidget {
  final String inputKey;

  OutputDisplay(this.inputKey);

  @override
  Widget build(BuildContext context) {
    if (inputKey == infinityMM) {
      return Container(
        color: Color(0xFFeceff1),
        alignment: Alignment.center,
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.only(bottom: 20.0),
        child: Text(
          infinityMM,
          style: TextStyle(
            fontSize: 52.0,
            color: Colors.black87,
          ),
        ),
      );
    } else {
      return Container(
        color: Color(0xFFeceff1),
        alignment: Alignment.topRight,
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.only(bottom: 20.0),
        child: Text(
          inputKey,
          style: TextStyle(
            fontSize: 36.0,
            color: Colors.black87,
          ),
        ),
      );
    }
  }
}
