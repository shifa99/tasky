import 'package:intl/intl.dart';

class DateDetails {
  final String day;
  final String number;
  DateDetails({required this.day, required this.number});
}

List<DateDetails> weekDays() 
{
  List<DateDetails> date = [];
  DateTime dateTime = DateTime.now();
  for (int index = 0; index < 7; index++) {
    String dateNow =
        DateFormat.MEd().format(dateTime.add(Duration(days: index))).toString();
    String day = dateNow[0];
    String number = dateNow.split('/').last.padLeft(2, '0');
    date.add(DateDetails(day: day, number: number));
  }
  return date;
}
