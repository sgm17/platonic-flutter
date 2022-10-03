extension TimestampExtension on DateTime {
  String toDate() {
    return "${_toTimeDigit(day)}/${_toTimeDigit(month)}/${_toTimeDigit(year)} ${_toTimeDigit(hour)}:${_toTimeDigit(minute)}";
  }

  String toChatBubble() {
    return "${_toTimeDigit(hour)}:${_toTimeDigit(minute)}";
  }
}

String toTime(int days, int hours, int minutes, int seconds) {
  return "${_toTimeDigit(days)}:${_toTimeDigit(hours)}:${_toTimeDigit(minutes)}:${_toTimeDigit(seconds)}";
}

String _toTimeDigit(int digit) {
  return digit >= 10 ? digit.toString() : "0${digit.toString()}";
}
