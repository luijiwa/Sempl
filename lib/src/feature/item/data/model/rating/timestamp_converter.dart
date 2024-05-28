import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

class TimestampConverter implements JsonConverter<DateTime, String> {
  const TimestampConverter();

  @override
  DateTime fromJson(String date) {
    final format = DateFormat('dd/MM/yyyy');

    return format.parse(date);
  }

  @override
  String toJson(DateTime dateTime) {
    final format = DateFormat('dd-MM-yyyy HH:mm:ss');
    return format.format(dateTime);
  }
}
