import 'package:easy_localization/easy_localization.dart';

String convertStringToDMYH(String rawDate) {
  final DateTime dateTime = DateTime.parse(rawDate);

  final String formattedDate =
      DateFormat("dd MMMM yyyy, HH:mm").format(dateTime);
  return formattedDate;
}
