import 'package:flutter/material.dart';
import 'crab_calc_icons.dart';
import 'data_bank.dart';
import 'keypad_keys.dart';
import 'operations.dart';
import 'output_display.dart';

void main() => runApp(CrabCalc());

class CrabCalc extends StatefulWidget {
  @override
  _CrabCalcState createState() => _CrabCalcState();
}

class _CrabCalcState extends State<CrabCalc> {
  String inputKey = '';

  void getInputKey(String newInputKey) {
    setState(() {
      if (newInputKey == 'ဖ') {
        inputKey = '';
      } else if (newInputKey == '=') {
        inputKey = Operations(inputKey).calculateInput();
      } else if (inputKey != infinityMM) {
        inputKey += newInputKey;
      } else {
        inputKey = newInputKey;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'တွက်စက်',
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
          leading: Icon(
            CrabCalcIcons.crab_icon,
            color: Colors.black87,
            size: 48.0,
          ),
          backgroundColor: Color(0xFFeceff1),
        ),
        backgroundColor: Colors.black87,
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: OutputDisplay(inputKey),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        KeypadKey('ဖ', getInputKey),
                        KeypadKey('÷', getInputKey),
                        KeypadKey('×', getInputKey),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        KeypadKey('၇', getInputKey),
                        KeypadKey('၈', getInputKey),
                        KeypadKey('၉', getInputKey),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        KeypadKey('၄', getInputKey),
                        KeypadKey('၅', getInputKey),
                        KeypadKey('၆', getInputKey),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        KeypadKey('၁', getInputKey),
                        KeypadKey('၂', getInputKey),
                        KeypadKey('၃', getInputKey),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 195.0,
                          ),
                          child: KeypadKey('၀', getInputKey),
                        ),
                        KeypadKey('.', getInputKey),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    KeypadKey('-', getInputKey),
                    KeypadKeyLarge('+', getInputKey),
                    KeypadKeyLarge('=', getInputKey),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
