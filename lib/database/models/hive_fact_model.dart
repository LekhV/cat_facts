import 'package:hive/hive.dart';

part 'hive_fact_model.g.dart';

@HiveType(typeId: 0)
class HiveFactModel extends HiveObject {
  @HiveField(0)
  final String fact;

  @HiveField(1)
  final DateTime dateTime;

  HiveFactModel({
    required this.fact,
    required this.dateTime,
  });
}
