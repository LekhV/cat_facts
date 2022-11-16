import 'models/cat_fact.dart';

abstract class CatFactsRepository {
  Future<CatFact> fetchCatFact();
}
