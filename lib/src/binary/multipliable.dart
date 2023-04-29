/// Interface used by types with multiplication binary operation defined, multiplicand x multiplier = product.
abstract class Multipliable<Y, Z> {
  /// Multiplies this by [other].
  ///
  /// The result is an instance of [Z].
  Z operator *(Y other);
}

/// Type alias for Multipliable<X, X>.
typedef MultipliableInternally<X> = Multipliable<X, X>;
