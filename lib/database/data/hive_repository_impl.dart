import 'package:fact_cats/database/hive_helper.dart';

import 'package:fact_cats/database/mappers/hive_cat_facts_mappers.dart';
import 'package:fact_cats/domain/cat_fact/models/cat_fact.dart';

import '../domain/hive_repository.dart';
import '../models/hive_fact_model.dart';

class HiveRepositoryImpl implements HiveRepository {
  @override
  Future<void> updateFactsCollection(CatFact fact) async {
    try {
      var box = await hiveHelper.hiveBox;

      await box.add(fact.toHiveModel());
    } catch (e) {
      throw UnimplementedError();
    }
  }

  @override
  Future<List<CatFact>> getFactsCollection() async {
    try {
      var box = await hiveHelper.hiveBox;

      List collection = box.values.toList();
      List<HiveFactModel> facts = [];
      if (collection.isNotEmpty) {
        facts = collection.map((e) => e as HiveFactModel).toList();
      }

      return facts.toModels();
    } catch (e) {
      throw UnimplementedError();
    }
  }
}
