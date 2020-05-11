import 'package:flutter/material.dart';

class KeypadKey extends StatelessWidget {
  final String inputKey;
  final Function funcCallback;

  KeypadKey(this.inputKey, this.funcCallback);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(5.0),
      child: MaterialButton(
        color: Colors.black87,
        textColor: Colors.white,
        height: 80.0,
        splashColor: Colors.white54,
        onPressed: () {
          funcCallback(inputKey);
        },
        child: Text(
          inputKey,
          style: TextStyle(fontSize: 35.0),
        ),
      ),
    );
  }
}

class KeypadKeyLarge extends StatelessWidget {
  final String inputKey;
  final Function funcCallback;

  KeypadKeyLarge(this.inputKey, this.funcCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: MaterialButton(
        color: Colors.black87,
        textColor: Colors.white,
        height: 170.0,
        splashColor: Colors.white54,
        onPressed: () {
          funcCallback(inputKey);
        },
        child: Text(
          inputKey,
          style: TextStyle(fontSize: 35.0),
        ),
      ),
    );
  }
}
