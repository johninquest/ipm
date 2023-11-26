class DateTimeHelper {
  deTimestamp() {
    DateTime now = DateTime.now();
    int year = now.year;
    int month = now.month;
    int day = now.day;
    String dtString = '$day.$month.$year';
    return dtString;
  }

  localDateTimeNow() {
    DateTime now = DateTime.now();
    DateTime localNow = now.toLocal();
    return '$localNow';
  }

  utcTimestamp() {
    DateTime now = DateTime.now();
    DateTime utcNow = now.toUtc();
    return '$utcNow';
  }

  isoTimestamp() {
    DateTime now = DateTime.now();
    int year = now.year;
    int month = now.month;
    int day = now.day;
    int hour = now.hour;
    int minute = now.minute;
    int second = now.second;
    String tsString = '$year-$month-$day:$hour:$minute:$second';
    return tsString;
  }
}
