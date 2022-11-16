import 'package:json_annotation/json_annotation.dart';

part 'cat_fact_dto.g.dart';

@JsonSerializable(createToJson: false)
class CatFactDTO {
  CatFactDTO({
    required this.data,
    this.dateTime,
  });

  final List<String> data;
  DateTime? dateTime;

  factory CatFactDTO.fromJson(Map<String, dynamic> json) =>
      _$CatFactDTOFromJson(json);
}
