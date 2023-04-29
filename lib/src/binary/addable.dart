/// Interface used by types with addition binary operation defined, summand1 + summand2 = sum.
abstract class Addable<Y, Z> {
  /// Adds this to [other].
  ///
  /// The result is an instance of [Z].
  Z operator +(Y other);
}

/// Type alias for Addable<X, X>.
typedef AddableInternally<X> = Addable<X, X>;
