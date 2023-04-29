import 'package:equatable/equatable.dart';
import 'package:op/op.dart';
import 'package:test/test.dart';

final Map<String, dynamic> negationOperation = <String, dynamic>{
  'testCases': <Map<String, dynamic>>[
    <String, dynamic>{
      'operand': RealNumber(65.47),
      'result': RealNumber(-65.47),
    },
  ],
};

void main() {
  negationOperation['testCases'].forEach((Map<String, dynamic> testCase) {
    final dynamic operand = testCase['operand'];
    final dynamic result = testCase['result'];

    test('-$operand == $result', () {
      expect(-operand, result);
    });
  });
}

class RealNumber with EquatableMixin implements Negatable<RealNumber> {
  RealNumber(this.value);

  final num value;

  @override
  List<Object> get props => <Object>[value];

  @override
  RealNumber operator -() => RealNumber(-value);

  @override
  String toString() => value.toString();
}
