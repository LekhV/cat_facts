import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:fact_cats/config.dart';

@module
abstract class ApiModule {
  @lazySingleton
  Dio getDio(AppConfig appConfig) {
    final options = BaseOptions(
      baseUrl: appConfig.baseUrl,
    );
    final dio = Dio(options);
    return dio;
  }
}
