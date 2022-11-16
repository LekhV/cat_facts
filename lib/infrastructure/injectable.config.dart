// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../api/cat_fact/cat_facts_api.dart' as _i6;
import '../config.dart' as _i3;
import '../database/domain/hive_repository.dart' as _i5;
import '../domain/cat_fact/cat_facts_repository.dart' as _i7;
import 'modules/api_module.dart' as _i8;
import 'modules/cart_facts_module.dart' as _i10;
import 'modules/hive_module.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final apiModule = _$ApiModule();
  final hiveModule = _$HiveModule();
  final catFactsModule = _$CatFactsModule();
  gh.singleton<_i3.AppConfig>(_i3.AppConfig());
  gh.lazySingleton<_i4.Dio>(() => apiModule.getDio(get<_i3.AppConfig>()));
  gh.lazySingleton<_i5.HiveRepository>(() => hiveModule.getHiveRepository());
  gh.lazySingleton<_i6.CatFactsApi>(
      () => catFactsModule.getCatFactsApi(get<_i4.Dio>()));
  gh.lazySingleton<_i7.CatFactsRepository>(
      () => catFactsModule.getCatFactsRepository(get<_i6.CatFactsApi>()));
  return get;
}

class _$ApiModule extends _i8.ApiModule {}

class _$HiveModule extends _i9.HiveModule {}

class _$CatFactsModule extends _i10.CatFactsModule {}
