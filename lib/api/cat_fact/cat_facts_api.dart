import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'dto/cat_fact_dto.dart';

part 'cat_facts_api.g.dart';

@RestApi()
abstract class CatFactsApi {
  factory CatFactsApi(Dio dio) = _CatFactsApi;

  @GET('')
  Future<CatFactDTO> fetchCatFact();
}
