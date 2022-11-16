import 'package:fact_cats/api/cat_fact/cat_facts_api.dart';
import 'package:fact_cats/data/cat_fact/mappers/cat_facts_mappers.dart';
import 'package:fact_cats/domain/cat_fact/cat_facts_repository.dart';
import 'package:fact_cats/domain/cat_fact/models/cat_fact.dart';

class CatFactsRepositoryImpl implements CatFactsRepository {
  final CatFactsApi catFactsApi;

  CatFactsRepositoryImpl(this.catFactsApi);

  @override
  Future<CatFact> fetchCatFact() async {
    try {
      final response = await catFactsApi.fetchCatFact().then(
            (dto) => dto.toModel(),
          );
      return response;
    } catch (e) {
      throw UnimplementedError();
    }
  }
}
