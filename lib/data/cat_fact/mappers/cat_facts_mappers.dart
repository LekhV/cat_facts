import 'package:fact_cats/api/cat_fact/dto/cat_fact_dto.dart';
import 'package:fact_cats/domain/cat_fact/models/cat_fact.dart';

extension CatFactDTOMapper on CatFactDTO {
  CatFact toModel() {
    return CatFact(
      fact: data.isNotEmpty ? data.first : '',
      dateTime: dateTime ?? DateTime.now(),
    );
  }
}
