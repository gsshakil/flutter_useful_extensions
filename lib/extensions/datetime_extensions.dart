/// Extension on [DateTime] to provide additional helper methods and properties.
extension DateTimeExtensions on DateTime {
  /// Formats the date as a string based on the given [pattern].
  /// Defaults to `yyyy-MM-dd`.
  String format([String pattern = 'yyyy-MM-dd']) {
    return '${year.toString().padLeft(4, '0')}-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}';
  }

  /// Returns `true` if the date is today.
  bool get isToday =>
      difference(DateTime.now()).inDays == 0 && day == DateTime.now().day;

  /// Returns `true` if the date is yesterday.
  bool get isYesterday => difference(DateTime.now()).inDays == -1;

  /// Returns `true` if the date is tomorrow.
  bool get isTomorrow => difference(DateTime.now()).inDays == 1;

  /// The number of days in the month for this date.
  int get daysInMonth => DateTime(year, month + 1, 0).day;

  /// Returns `true` if the year is a leap year.
  bool get isLeapYear =>
      (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);

  /// Returns a human-readable string representing how long ago this date was.
  String timeAgo() {
    final Duration diff = DateTime.now().difference(this);
    if (diff.inSeconds < 60) return '${diff.inSeconds} sec ago';
    if (diff.inMinutes < 60) return '${diff.inMinutes} min ago';
    if (diff.inHours < 24) return '${diff.inHours} hrs ago';
    if (diff.inDays < 7) return '${diff.inDays} days ago';
    if (diff.inDays < 30) return '${(diff.inDays / 7).floor()} weeks ago';
    if (diff.inDays < 365) return '${(diff.inDays / 30).floor()} months ago';
    return '${(diff.inDays / 365).floor()} years ago';
  }

  /// Creates a new [DateTime] by copying this one and overriding given fields.
  DateTime copyWith({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
  }) {
    return DateTime(
      year ?? this.year,
      month ?? this.month,
      day ?? this.day,
      hour ?? this.hour,
      minute ?? this.minute,
      second ?? this.second,
    );
  }

  /// Returns a [DateTime] object representing the start of the day (00:00:00).
  DateTime get startOfDay {
    return subtract(Duration(
      hours: hour,
      minutes: minute,
      seconds: second,
      milliseconds: millisecond,
      microseconds: microsecond,
    ));
  }

  /// Returns a [DateTime] object representing the end of the day (23:59:59).
  DateTime get endOfDay {
    return add(Duration(
      hours: 23 - hour,
      minutes: 59 - minute,
      seconds: 59 - second,
      milliseconds: -millisecond,
      microseconds: -microsecond,
    ));
  }

  /// Returns the difference in minutes from another [dateTime].
  int minutesFrom(DateTime dateTime) {
    return dateTime.difference(this).inMinutes;
  }

  /// Returns the difference in seconds from another [dateTime].
  int secondsFrom(DateTime dateTime) {
    return dateTime.difference(this).inSeconds;
  }

  /// Returns the first day of the current week.
  DateTime get firstDayOfWeek =>
      subtract(Duration(days: weekday - 1)).startOfDay;

  /// Returns the last day of the current week.
  DateTime get lastDayOfWeek =>
      add(Duration(days: DateTime.daysPerWeek - weekday)).endOfDay;

  /// Returns `true` if this date is before or equal to today.
  bool get isDateBeforeOrEqualTodayConcise {
    DateTime now = DateTime.now();
    DateTime todayMidnight = DateTime(now.year, now.month, now.day);
    return compareTo(todayMidnight) <= 0;
  }
}
