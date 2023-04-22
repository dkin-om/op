/// Interface used by types with addition binary operation defined, summand1 + summand2 = sum.
abstract class Addable<Y, Z> {
  /// Adds [y] to this.
  ///
  /// The result is an instance of [Z].
  Z operator +(Y y);
}
