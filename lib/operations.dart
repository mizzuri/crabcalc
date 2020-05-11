import 'package:expressions/expressions.dart';
import 'data_bank.dart';

class Operations {
  String _mmString = '';

  Operations(this._mmString);

  String calculateInput() {
    String _mmResult = '';
    String _engString = '';
//    String _engString = '';

    // Convert Myanmar string to English string.
    for (int x = 0; x < _mmString.length; x++) {
      conversionMap.forEach((k, v) {
        if (_mmString[x] == k) {
          _engString += v;
        }
      });
    }

    // String evaluation
    Expression _expression = Expression.parse(_engString);
    final _evaluator = const ExpressionEvaluator();
    var _evalResult = _evaluator.eval(_expression, context);

    _engString = _evalResult.toString();

    // Convert English string to Myanmar string
    if (_engString == 'Infinity') {
      _mmResult = infinityMM;
    } else {
      for (int y = 0; y < _engString.length; y++) {
        conversionMap.forEach((k, v) {
          if (_engString[y] == v) {
            _mmResult += k;
          }
        });
      }
    }
    return _mmResult;
  }
}
