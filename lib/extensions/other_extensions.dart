/// Extension on [num] to provide currency formatting and time duration conversions.
extension NumExtensions on num {
  /// Converts the number to a currency string with a customizable symbol.
  String toCurrency({String symbol = '\$'}) => '$symbol${toStringAsFixed(2)}';

  /// Converts the number to a [Duration] in seconds.
  Duration get seconds => Duration(seconds: toInt());

  /// Converts the number to a [Duration] in minutes.
  Duration get minutes => Duration(minutes: toInt());

  /// Converts the number to a [Duration] in hours.
  Duration get hours => Duration(hours: toInt());
}
