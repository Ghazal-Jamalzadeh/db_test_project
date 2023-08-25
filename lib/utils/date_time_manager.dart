class DateTimeManager {
  static DateTime generateDateTimeFromPickerStuff(DateTime date, String time) {
    return DateTime.parse(date.toString().replaceRange(11, 16, time));
  }
}