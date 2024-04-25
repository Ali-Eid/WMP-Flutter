import 'package:easy_localization/easy_localization.dart';

extension StringExtensions on String {
  String validDate() {
    DateFormat inputFormat = DateFormat("d/M/yyyy");
    DateTime date = inputFormat.parse(this);

    DateFormat outputFormat = DateFormat("yyyy-MM-dd");
    String formattedDate = outputFormat.format(date);

    return formattedDate;
  }

  bool passwordReg() {
    return !RegExp(
            r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$')
        .hasMatch(this);
  }

  String get removeLeadingZero {
    return replaceAll(RegExp(r'^0'), '');
  }

  String doubleDigitNumber() {
    return length == 1 ? '0$this' : this;
  }
}
