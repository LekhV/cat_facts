// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_fact_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatFactDTO _$CatFactDTOFromJson(Map<String, dynamic> json) => CatFactDTO(
      data: (json['data'] as List<dynamic>).map((e) => e as String).toList(),
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
    );
