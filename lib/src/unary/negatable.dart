/// Interface used by types with negation defined, -operand = negation.
abstract class Negatable<X> {
  /// Negates this.
  ///
  /// The result is an instance of [X].
  X operator -();
}
