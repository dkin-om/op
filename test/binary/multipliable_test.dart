import 'package:equatable/equatable.dart';
import 'package:op/op.dart';
import 'package:test/test.dart';

final Map<String, dynamic> multiplicationOperation = <String, dynamic>{
  'testCases': <Map<String, dynamic>>[
    <String, dynamic>{
      'operand1': RealNumber(4),
      'operand2': RealNumber(7),
      'result': RealNumber(28),
    },
  ],
};

void main() {
  multiplicationOperation['testCases'].forEach((Map<String, dynamic> testCase) {
    final dynamic operand1 = testCase['operand1'];
    final dynamic operand2 = testCase['operand2'];
    final dynamic result = testCase['result'];

    test('$operand1 x $operand2 == $result', () {
      expect(operand1 * operand2, result);
    });
  });
}

class RealNumber
    with EquatableMixin
    implements MultipliableInternally<RealNumber> {
  RealNumber(this.value);

  final num value;

  @override
  List<Object> get props => <Object>[value];

  @override
  RealNumber operator *(RealNumber y) => RealNumber(value * y.value);

  @override
  String toString() => value.toString();
}
