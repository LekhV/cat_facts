import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'package:fact_cats/database/domain/hive_repository.dart';
import 'package:fact_cats/database/data/hive_repository_impl.dart';
import 'package:fact_cats/database/models/hive_fact_model.dart';

@module
abstract class HiveModule {
  @lazySingleton
  HiveRepository getHiveRepository() {
    Hive.registerAdapter<HiveFactModel>(HiveFactModelAdapter());

    return HiveRepositoryImpl();
  }
}
