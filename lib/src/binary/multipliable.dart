/// Interface used by types with multiplication binary operation defined, multiplicand x multiplier = product.
abstract class Multipliable<Y, Z> {
  /// Multiplies this by [y].
  ///
  /// The result is an instance of [Z].
  Z operator *(Y y);
}
