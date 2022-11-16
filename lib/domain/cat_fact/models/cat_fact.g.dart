// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_fact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatFact _$CatFactFromJson(Map<String, dynamic> json) => CatFact(
      fact: json['fact'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
    );

Map<String, dynamic> _$CatFactToJson(CatFact instance) => <String, dynamic>{
      'fact': instance.fact,
      'dateTime': instance.dateTime.toIso8601String(),
    };
