# op - Operation

[![Operation](https://raw.githubusercontent.com/dkin-om/op/master/img/.op.png)](https://github.com/dkin-om/op)

[![Version](https://img.shields.io/pub/v/op)](https://pub.dev/packages/op)
[![Build Status](https://travis-ci.com/dkin-om/op.svg?branch=master)](https://app.travis-ci.com/github/dkin-om/op)
[![Coverage Status](https://coveralls.io/repos/github/dkin-om/op/badge.svg)](https://coveralls.io/github/dkin-om/op)
[![License](https://img.shields.io/badge/license-MIT-green)](https://github.com/dkin-om/op/blob/master/LICENSE)

A Dart library defining interfaces for mathematical operations, such as addition and multiplication

## Usage

See `example/main.dart`

#### `Addable`
```dart
void main() {
  final Integer summand1 = Integer(6);
  print(summand1); // 6

  final Integer summand2 = Integer(5);
  print(summand2); // 5

  final Integer sum = summand1 + summand2;
  print(sum); // 11
}

class Integer implements Addable<Integer, Integer> {
  Integer(this.value);

  final int value;

  @override
  Integer operator +(Integer y) => Integer(value + y.value);

  @override
  String toString() => value.toString();
}
```

#### `Multipliable`
```dart
void main() {
  final RealNumber multiplicand = RealNumber(4);
  print(multiplicand); // 4

  final RealNumber multiplier = RealNumber(7);
  print(multiplier); // 7

  final RealNumber product = multiplicand * multiplier;
  print(product); // 28
}

class RealNumber implements Multipliable<RealNumber, RealNumber> {
  RealNumber(this.value);

  final num value;

  @override
  RealNumber operator *(RealNumber y) => RealNumber(value * y.value);

  @override
  String toString() => value.toString();
}
```

## Syntax

See [documentation](https://pub.dev/documentation/op) for more

## License

[MIT](https://github.com/dkin-om/op/blob/master/LICENSE)
