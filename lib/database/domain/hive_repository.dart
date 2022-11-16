import 'package:fact_cats/domain/cat_fact/models/cat_fact.dart';

abstract class HiveRepository {
  Future<void> updateFactsCollection(CatFact fact);

  Future<List<CatFact>> getFactsCollection();
}
