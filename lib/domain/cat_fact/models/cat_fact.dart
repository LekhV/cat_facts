import 'package:json_annotation/json_annotation.dart';

part 'cat_fact.g.dart';

@JsonSerializable()
class CatFact {
  final String fact;
  final DateTime dateTime;

  CatFact({
    required this.fact,
    required this.dateTime,
  });
}
