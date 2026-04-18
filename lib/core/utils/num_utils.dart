extension DoubleFormatter on double {
  /// Converts a double to a string with a maximum number of fraction digits.
  /// If [maxFractionDigits] is 2:
  /// 5.0   -> "5"
  /// 5.5   -> "5.5"
  /// 5.556 -> "5.56"
  /// 5.10  -> "5.1"
  String toSmartString({int maxFractionDigits = 1}) {
    // 1. Format to fixed precision first
    final fixedString = toStringAsFixed(maxFractionDigits);

    // 2. Parse it back to a double to let the engine handle trailing zeros,
    // then check if it's effectively an integer.
    final truncated = double.parse(fixedString);

    if (truncated == truncated.truncateToDouble()) {
      return truncated.truncate().toString();
    }

    // 3. Remove unnecessary trailing zeros (e.g., "5.10" -> "5.1")
    // but keep the decimal if it's not a whole number.
    return truncated.toString();
  }
}
