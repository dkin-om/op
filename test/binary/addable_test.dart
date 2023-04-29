import 'package:equatable/equatable.dart';
import 'package:op/op.dart';
import 'package:test/test.dart';

final Map<String, dynamic> additionOperation = <String, dynamic>{
  'testCases': <Map<String, dynamic>>[
    <String, dynamic>{
      'operand1': Integer(6),
      'operand2': Integer(5),
      'result': Integer(11),
    },
  ],
};

void main() {
  additionOperation['testCases'].forEach((Map<String, dynamic> testCase) {
    final dynamic operand1 = testCase['operand1'];
    final dynamic operand2 = testCase['operand2'];
    final dynamic result = testCase['result'];

    test('$operand1 + $operand2 == $result', () {
      expect(operand1 + operand2, result);
    });
  });
}

class Integer with EquatableMixin implements AddableInternally<Integer> {
  Integer(this.value);

  final int value;

  @override
  List<Object> get props => <Object>[value];

  @override
  Integer operator +(Integer y) => Integer(value + y.value);

  @override
  String toString() => value.toString();
}
