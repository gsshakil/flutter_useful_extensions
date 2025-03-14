extension DateTimeExtensions on DateTime {
  String format([String pattern = 'yyyy-MM-dd']) {
    return '${year.toString().padLeft(4, '0')}-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}';
  }

  bool get isToday =>
      difference(DateTime.now()).inDays == 0 && day == DateTime.now().day;
  bool get isYesterday => difference(DateTime.now()).inDays == -1;
  bool get isTomorrow => difference(DateTime.now()).inDays == 1;

  int get daysInMonth => DateTime(year, month + 1, 0).day;
  bool get isLeapYear =>
      (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);

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

  DateTime copyWith(
      {int? year, int? month, int? day, int? hour, int? minute, int? second}) {
    return DateTime(
      year ?? this.year,
      month ?? this.month,
      day ?? this.day,
      hour ?? this.hour,
      minute ?? this.minute,
      second ?? this.second,
    );
  }
}
