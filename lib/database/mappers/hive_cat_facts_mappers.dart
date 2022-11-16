import 'package:fact_cats/database/models/hive_fact_model.dart';
import 'package:fact_cats/domain/cat_fact/models/cat_fact.dart';

extension HiveCatFactMapper on CatFact {
  HiveFactModel toHiveModel() {
    return HiveFactModel(
      fact: fact,
      dateTime: dateTime,
    );
  }
}

extension CatFactMapper on HiveFactModel {
  CatFact toModel() {
    return CatFact(
      fact: fact,
      dateTime: dateTime,
    );
  }
}

extension CardBackDTOMappers on List<HiveFactModel> {
  List<CatFact> toModels() {
    return map((hiveFact) => hiveFact.toModel()).toList();
  }
}
