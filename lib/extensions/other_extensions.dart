extension NumExtensions on num {
  String toCurrency({String symbol = '\$'}) => '$symbol${toStringAsFixed(2)}';
  Duration get seconds => Duration(seconds: toInt());
  Duration get minutes => Duration(minutes: toInt());
  Duration get hours => Duration(hours: toInt());
}
