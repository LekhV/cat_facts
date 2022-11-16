import 'package:intl/intl.dart';

String convertDateToString(date) => DateFormat.yMd().add_jm().format(date);
