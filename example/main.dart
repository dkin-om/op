import 'package:op/op.dart';

void main() {
  addable();
  multipliable();
}

void addable() {
  final Integer summand1 = Integer(6);
  print(summand1); // 6

  final Integer summand2 = Integer(5);
  print(summand2); // 5

  final Integer sum = summand1 + summand2;
  print(sum); // 11
}

void multipliable() {
  final RealNumber multiplicand = RealNumber(4);
  print(multiplicand); // 4

  final RealNumber multiplier = RealNumber(7);
  print(multiplier); // 7

  final RealNumber product = multiplicand * multiplier;
  print(product); // 28
}

class Integer implements Addable<Integer, Integer> {
  Integer(this.value);

  final int value;

  @override
  Integer operator +(Integer y) => Integer(value + y.value);

  @override
  String toString() => value.toString();
}

class RealNumber implements Multipliable<RealNumber, RealNumber> {
  RealNumber(this.value);

  final num value;

  @override
  RealNumber operator *(RealNumber y) => RealNumber(value * y.value);

  @override
  String toString() => value.toString();
}
