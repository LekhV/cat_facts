import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:fact_cats/api/cat_fact/cat_facts_api.dart';
import 'package:fact_cats/data/cat_fact/cat_facts_repository_impl.dart';
import 'package:fact_cats/domain/cat_fact/cat_facts_repository.dart';

@module
abstract class CatFactsModule {
  @lazySingleton
  CatFactsApi getCatFactsApi(Dio dio) => CatFactsApi(dio);

  @lazySingleton
  CatFactsRepository getCatFactsRepository(CatFactsApi api) =>
      CatFactsRepositoryImpl(api);
}
