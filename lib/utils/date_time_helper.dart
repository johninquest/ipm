import 'package:intl/intl.dart';

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
    try {
      DateTime now = DateTime.now();
      int year = now.year;
      int month = now.month;
      int day = now.day;
      int hour = now.hour;
      int minute = now.minute;
      int second = now.second;
      String tsString = '$year-$month-$day:$hour:$minute:$second';
      return tsString;
    } catch (e) {
      rethrow;
    }
  }

  toDeDateFormat(String dt) {
    if (DateTime.tryParse(dt) != null && dt != '') {
      DateTime parsedDatTime = DateTime.parse(dt);
      DateFormat deDateFormat = DateFormat('dd.MM.yyyy');
      String toDateFormat = deDateFormat.format(parsedDatTime);
      return toDateFormat;
    } else {
      return '--.--.----';
    }
  }
}
