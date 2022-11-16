import 'package:injectable/injectable.dart';

@singleton
class AppConfig {
  String baseUrl = 'https://meowfacts.herokuapp.com';
  String imageUrl = 'https://cataas.com/cat';
}

final AppConfig config = AppConfig();
